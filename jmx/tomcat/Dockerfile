FROM  harbor.product.co-mall/platform/tomcat:7

ADD jmx/*   /tmp/
RUN sed -i '2c JAVA_OPTS='-javaagent:/tmp/jmx_prometheus_javaagent-0.1.0.jar=0.0.0.0:13234:/tmp/tomcat.yaml''  /usr/local/tomcat/bin/catalina.sh


