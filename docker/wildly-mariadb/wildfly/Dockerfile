FROM quay.io/wildfly/wildfly:26.1.1.Final-2

# admin user for admin web console
RUN /opt/jboss/wildfly/bin/add-user.sh adminwf password --silent

ADD jdbc /opt/jdbc
ADD config /opt/config
#ADD artifact /opt/artifact

RUN /opt/config/execute.sh add_datasource.cli

# RUN /opt/config/execute.sh deploy_api.cli
COPY artifact/movieapi.war /opt/jboss/wildfly/standalone/deployments 

EXPOSE 8080 9990

# automatically launch the standalone configuration
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone.xml"]
