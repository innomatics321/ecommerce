FROM tomcat 
MAINTAINER Madhuri 
ARG CONT_IMG_VER 
WORKDIR /usr/local/tomcat 
EXPOSE 8080 
WORKDIR /home/runner/work/madhuapp/madhuapp/staging
ADD **/ecommerce.war /usr/local/tomcat/webapps/
CMD [service tomcat start && tail -f /usr/local/tomcat/logs/catalina.out]
