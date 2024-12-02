# Étape 1 : Image de base pour la compilation
FROM eclipse-temurin:11-jdk AS build

# Définir le répertoire de travail
WORKDIR /app

# Installer Maven
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget tar && \
    wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz && \
    tar -xzf apache-maven-3.9.9-bin.tar.gz -C /opt/ && \
    ln -s /opt/apache-maven-3.9.9/bin/mvn /usr/bin/mvn && \
    rm apache-maven-3.9.9-bin.tar.gz && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Vérifier la version de Java
RUN java -version

# Copier le fichier pom.xml et télécharger les dépendances en cache
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copier le code source
COPY src ./src

# Construire l'application
RUN mvn clean package -DskipTests

# Étape 2 : Image de base pour Tomcat
FROM tomcat:9.0-jdk11-openjdk

# Supprimer les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copier le WAR depuis l'étape précédente
COPY --from=build /app/target/production-engineering.war /usr/local/tomcat/webapps/ROOT.war

# Exposer le port 8080
EXPOSE 8080

# Lancer Tomcat
CMD ["catalina.sh", "run"]
