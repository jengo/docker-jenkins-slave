FROM radumatei/jenkins-slave-docker

RUN apk update \
	&& apk add py-pip make expect \
	&& pip install --upgrade pip \
	&& pip install docker-compose \
	&& apk cache clean

ENV INSIDE_CONTAINER=1


