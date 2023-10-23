FROM alpine:latest

# Install necessary packages and set up environment
RUN apk update && apk upgrade && \
    apk add openjdk11 wget

# Create a directory for Tomcat and download Tomcat
RUN mkdir /usr/local/tomcat
WORKDIR /usr/local/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.14/bin/apache-tomcat-10.1.14.tar.gz && \
    tar -xvf apache-tomcat-10.1.14.tar.gz --strip-components=1 && \
    rm apache-tomcat-10.1.14.tar.gz

# Add war file
ADD **/*.war /usr/local/tomcat/webapps

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["bin/catalina.sh", "run"]

