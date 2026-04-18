



Below is our dockerfile and gradle properties details....and we don't want to create a new Docker images but we want to remove or override the the below 4 parameters from gradle.properties inside docker images because it is creating the issue to download the gradle plugins>>

Below 4 parameters which needs to remove:

systemProp.http.proxyHost=serverswg.sbi.co.in
systemProp.http.proxyPort=80
systemProp.https.proxyHost=serverswg.sbi.co.in
systemProp.https.proxyPort=9090




[root@registry Javaappdeploy]# ll
total 132988
-rw-r----- 1 root root      2482 Nov 28  2024 build.gradle
-rw-r----- 1 root root         0 Nov 28  2024 Could
-rw-r----- 1 root root       712 Nov 29  2024 Dockerfile
-rw-r----- 1 root root       771 Nov 28  2024 Dockerfile_28_11_2024
-rw-r----- 1 root root       636 Nov 29  2024 Dockerfile_29112024
-rw-r----- 1 root root       545 Nov 28  2024 Dockerfile_bckp
drwxr-x--- 6 root root      4096 Nov 28  2024 epay_transaction_service
drwxr-x--- 3 root root        21 Nov 28  2024 gradle
drwxr-x--- 5 root root        85 Nov 28  2024 gradle-8.9
-rw-r----- 1 root root 136114148 Nov 28  2024 gradle-8.9-bin.zip
-rw-r----- 1 root root       266 Nov 28  2024 gradle.properties
-rwxr-x--- 1 root root        81 Nov 28  2024 gradle.sh
-rw-r----- 1 root root      9014 Nov 28  2024 gradlew
-rw-r----- 1 root root      2966 Nov 28  2024 gradlew.bat
drwxr-x--- 2 root root      4096 Nov 28  2024 libs
-rw-r----- 1 root root      6309 Nov 28  2024 README.md
-rw-r----- 1 root root        47 Nov 28  2024 settings.gradle
drwxr-x--- 4 root root        30 Nov 28  2024 src
[root@registry Javaappdeploy]#
[root@registry Javaappdeploy]#
[root@registry Javaappdeploy]# cat gradle.
cat: gradle.: No such file or directory
[root@registry Javaappdeploy]# cat gradle.
cat: gradle.: No such file or directory
[root@registry Javaappdeploy]#
[root@registry Javaappdeploy]#
[root@registry Javaappdeploy]# cat gradle.properties
systemProp.http.proxyHost=serverswg.sbi.co.in
systemProp.http.proxyPort=80
systemProp.https.proxyHost=serverswg.sbi.co.in
systemProp.https.proxyPort=9090
#systemProp.javax.net.ssl.trustStore=/etc/pki/tls/certs/cacerts
#systemProp.javax.net.ssl.trustStoreType=pkcs12
[root@registry Javaappdeploy]#
[root@registry Javaappdeploy]#
[root@registry Javaappdeploy]#
[root@registry Javaappdeploy]# cat Dockerfile
FROM registry.access.redhat.com/ubi9/openjdk-21
#RUN mkdir -p /opt/gradle/
USER root
RUN mkdir -p /app
WORKDIR /app
COPY gradle-8.9/ /app/
ENV GRADLE_HOME=/app/gradle
ENV PATH=$PATH:$GRADLE_HOME/bin
COPY ./gradle.properties /app/gradle/

#COPY ./gradle.sh /etc/profile.d/gradle.sh
#RUN ./etc/profile.d/gradle.sh

#RUN chmod -R 777 /opt/gradle

RUN ls -lrth /app
RUN chmod -R 777 /app/
COPY ./epay_transaction_service/ /app/
RUN ls -lrth /app/
RUN ls -lrth /app/libs/*
RUN ls -lrth gradle/
ENV GRADLE_HOME=/app
ENV PATH=$PATH:$GRADLE_HOME/bin
#RUN gradle build --no-daemon
Run ls -lrth /app/

EXPOSE 9081
#ENTRYPOINT ["gradle", "run"]
ENTRYPOINT ["gradle", "bootRun", "--debug"]
#CMD ["bash","tail -f /dev/null"]
