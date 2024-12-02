# Étape 1 : Build avec Maven
FROM maven:3.8.6-openjdk-11 AS build

# Définir le répertoire de travail
WORKDIR /app

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
