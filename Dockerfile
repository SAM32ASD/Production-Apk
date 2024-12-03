# Étape 1 : Utiliser une image Maven avec Java 11
FROM maven:3.9.9-openjdk-11-slim AS build

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier pom.xml et le dossier src
COPY pom.xml .
COPY src ./src

# Construire l'application (cela génère le fichier WAR dans le dossier target)
RUN mvn clean package -DskipTests

# Étape 2 : Utiliser une image Tomcat avec Java 11
FROM tomcat:9.0-jdk11-openjdk

# Supprimer les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copier le fichier WAR généré depuis l'étape précédente
COPY --from=build /app/target/production-engineering.war /usr/local/tomcat/webapps/ROOT.war

# Exposer le port 8080
EXPOSE 8080

# Démarrer Tomcat
CMD ["catalina.sh", "run"]
