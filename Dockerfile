# Utiliser Tomcat 9 avec JDK 11
FROM tomcat:9.0-jdk11-openjdk

# Supprimer les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copier le fichier WAR de votre application
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Port d'exposition
EXPOSE 8080

# Démarrer Tomcat
CMD ["catalina.sh", "run"]
