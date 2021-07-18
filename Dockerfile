FROM openjdk:17-alpine as pet-bulid
WORKDIR petclinic
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src
RUN ./mvnw install
RUN cp /petclinic/target/*.jar app.jar
RUN java -Djarmode=layertools -jar app.jar extract

FROM openjdk:17-alpine
WORKDIR application
COPY --from=pet-bulid petclinic/dependencies/ ./
COPY --from=pet-bulid petclinic/spring-boot-loader/ ./
COPY --from=pet-bulid petclinic/snapshot-dependencies/ ./
COPY --from=pet-bulid petclinic/application/ ./
ENTRYPOINT ["java", "-Dspring.profiles.active=mysql", "org.springframework.boot.loader.JarLauncher"]