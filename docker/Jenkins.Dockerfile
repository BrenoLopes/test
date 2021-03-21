FROM jenkins/jenkins:lts

USER root

# Installing maven
RUN cd /tmp \
  && wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip \
  && unzip -q -d /opt/ apache-maven-3.6.3-bin.zip \
  && ln -s /opt/apache-maven-3.6.3/bin/mvn /usr/bin/mvn

# Installing gradle
RUN cd /tmp \
  && wget https://services.gradle.org/distributions/gradle-6.8.3-all.zip \
   && unzip -q -d /opt/ gradle-6.8.3-all.zip \
   && ln -s /opt/gradle-6.8.3/bin/gradle /usr/bin/gradle

# Installing docker
RUN curl -sSL https://get.docker.com/ | sh

VOLUME ["/var/jenkins_home", "/var/run/docker.sock"]


#RUN apt-get update \
#  && apt-get install -y sudo
#
#RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
#
#USER jenkins