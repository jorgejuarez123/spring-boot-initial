# Usamos la imagen oficial de OpenJDK 17
FROM registry.access.redhat.com/ubi9/openjdk-17:latest

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo JAR generado por Maven/Gradle al contenedor
COPY target/spring-boot-initial-0.0.1-SNAPSHOT.jar app.jar

# Exponemos el puerto por defecto de Spring Boot
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java","-jar","app.jar"]
