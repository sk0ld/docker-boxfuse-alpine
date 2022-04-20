FROM tomcat:8.5.13-jre8-alpine
RUN apk update
RUN apk --no-cache add openjdk8 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk add git  && apk add maven
WORKDIR /usr/share/app-src
RUN git clone https://github.com/sk0ld/boxfuse-custom.git ./
RUN mvn package -s settings.xml -DskipTest
RUN cp ./target/*.war /usr/local/tomcat/webapps
