#syntax=docker/dockerfile:1
FROM gcr.io/distroless/java21-debian12
WORKDIR /minecraft
VOLUME [ "/minecraft/" ]
ENV ram=2G
#Assumes tcp
EXPOSE 25565
CMD java -Xmx${ram} -jar fabric-server-mc.1.21.6-loader.0.16.14-launcher.1.0.3.jar nogui