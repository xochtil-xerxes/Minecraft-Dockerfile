#syntax=docker/dockerfile:1
FROM eclipse-temurin:21
WORKDIR /minecraft
VOLUME [ "/minecraft/" ]
ENV ram=2G
ENV version=1.21.5-loader.0.16.14-launcher.1.0.3.jar
#Assumes tcp
EXPOSE 25565
CMD java -Xmx$ram -jar fabric-server-mc.1.21.5-loader.0.16.14-launcher.1.0.3.jar nogui