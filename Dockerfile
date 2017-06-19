FROM openjdk

WORKDIR /opt

ADD stackoverflow-apis-fat.jar /opt/target/stackoverflow-apis-fat.jar

RUN chmod a+rwx target/stackoverflow-apis-fat.jar

EXPOSE 8080

CMD ["java", "-jar", "target/stackoverflow-apis-fat.jar"]