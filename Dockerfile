FROM gradle:jdk25-corretto AS build
WORKDIR /app
COPY music-catalog-service/ .
RUN gradle clean bootJar --no-daemon

FROM eclipse-temurin:25-jre AS runtime
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar
EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=10s --start-period=20s --retries=3 \
  CMD curl -f http://localhost:8080/actuator/health || exit 1
ENTRYPOINT ["java","-jar","app.jar"]
