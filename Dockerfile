# Étape 1 : Construire le projet avec Maven et Java 11
FROM maven:3.9.9-openjdk-11-slim AS build

WORKDIR /app

# Copier les fichiers du projet dans l'image Docker
COPY pom.xml .
COPY src ./src

# Construire le projet Maven (en sautant les tests pour gagner du temps)
RUN mvn clean package -DskipTests

# Étape 2 : Déployer sur Tomcat
FROM tomcat:9.0-jdk11-openjdk

# Supprimer les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copier le fichier WAR généré dans le dossier webapps de Tomcat
COPY --from=build /app/target/production-engineering.war /usr/local/tomcat/webapps/ROOT.war

# Exposer le port utilisé par Tomcat
EXPOSE 8080

# Démarrer Tomcat
CMD ["catalina.sh", "run"]
