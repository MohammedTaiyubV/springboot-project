FROM maven
WORKDIR /build
COPY . .
RUN mvn package
RUN mv target/*.jar app.jar
CMD ["java","-jar","app.jar"]

# this application is exposed to port 9090 it will run on 9090 
