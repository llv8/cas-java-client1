#! /bin/bash

export CATALINA_HOME=/home/lewis/apache-tomcat-7.0.73
export CATALINA_BASE=$CATALINA_HOME/tomcat-instances/cas-sso

cd /home/lewis/git/cas-java-client1
mvn clean package
/home/lewis/jdk1.8.0_111/bin/java -Djava.util.logging.config.file=/home/lewis/apache-tomcat-7.0.73/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djdk.tls.ephemeralDHKeySize=2048 -Djava.endorsed.dirs=/home/lewis/apache-tomcat-7.0.73/endorsed -classpath /home/lewis/apache-tomcat-7.0.73/bin/bootstrap.jar:/home/lewis/apache-tomcat-7.0.73/bin/tomcat-juli.jar -Dcatalina.base=/home/lewis/apache-tomcat-7.0.73/tomcat-instances/cas-client -Dcatalina.home=/home/lewis/apache-tomcat-7.0.73 -Djava.io.tmpdir=/home/lewis/apache-tomcat-7.0.73/temp org.apache.catalina.startup.Bootstrap start


