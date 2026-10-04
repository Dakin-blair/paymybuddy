# Image de base imposée par l'énoncé : Java 17 sur Alpine
FROM amazoncorretto:17-alpine

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le JAR de l'application
COPY target/paymybuddy.jar paymybuddy.jar

# Port utilisé par Spring Boot
EXPOSE 8080

# Lancer l'application
CMD ["java", "-jar", "paymybuddy.jar"]
