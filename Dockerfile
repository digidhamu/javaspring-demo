#  docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install

FROM maven:3.3-jdk-8

WORKDIR /usr/src/mymaven
COPY . .

RUN mvn clean install

EXPOSE 8080

# Run in foreground
CMD ["mvn", "spring-boot:run"]
