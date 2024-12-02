# Étape 1 : Utiliser une image de base avec OpenJDK 11
FROM openjdk:11-jdk-slim AS build

# Définir le répertoire de travail
WORKDIR /app

# Définir la version de Java pour Maven
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Télécharger et installer Maven 3.9.9
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz && \
    tar -xzf apache-maven-3.9.9-bin.tar.gz -C /opt/ && \
    ln -s /opt/apache-maven-3.9.9/bin/mvn /usr/bin/mvn && \
    rm apache-maven-3.9.9-bin.tar.gz

# Vérifier les versions de Java et Maven
RUN java -version && mvn -version

# Copier le fichier pom.xml et le dossier src pour construire l'image
COPY pom.xml .
COPY src ./src

# Construire l'application (cela génère le fichier WAR dans le dossier target)
RUN mvn clean package -DskipTests

# Étape 2 : Créer l'image finale avec Tomcat
FROM tomcat:9.0-jdk11-openjdk

# Supprimer les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copier le fichier WAR généré depuis l'étape précédente
COPY --from=build /app/target/production-engineering.war /usr/local/tomcat/webapps/ROOT.war

# Exposer le port 8080
EXPOSE 8080

# Démarrer Tomcat
CMD ["catalina.sh", "run"]
