FROM amazoncorretto:latest

RUN apt update && \
    apt clean all && \
    rm -rf /var/cache/apt

WORKDIR /root
COPY build/libs/xyzLogistics-0.0.1-SNAPSHOT.jar /root/xyzLogistics.jar
ENTRYPOINT [ "java", "-jar", "/root/xyzLogistics.jar" ]