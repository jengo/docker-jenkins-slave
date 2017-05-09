FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave

RUN apt-get update \
	&& apt-get install -y make apt-transport-https ca-certificates \
	curl gnupg2 software-properties-common \
	&& curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
	&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
	&& apt-get update \
	&& apt-get install -y docker-ce

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

