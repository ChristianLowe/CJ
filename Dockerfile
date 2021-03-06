FROM jenkinsci/blueocean

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Maven
USER root 
RUN apk add --no-cache maven

# Groovy scripts
COPY groovy/* /usr/share/jenkins/ref/init.groovy.d/
