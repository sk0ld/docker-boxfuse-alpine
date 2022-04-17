Boxfuse app in alpine tomcat for jenkins test

docker build --no-cache -t docker-boxfuse-alpine .

docker run --rm -itd -p 8080:8080 --name boxfuse-custom docker-boxfuse-alpine