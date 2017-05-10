FROM radumatei/jenkins-slave-docker

RUN apk update \
	&& apk add py-pip make \
	&& pip install --upgrade pip \
	&& pip install docker-compose

ENV INSIDE_CONTAINER=1


