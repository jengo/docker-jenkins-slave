FROM radumatei/jenkins-slave-docker

RUN apk update \
	&& apk add py-pip make expect \
	&& pip install --no-cache-dir --upgrade pip \
	&& pip install --no-cache-dir docker-compose
#	&& apk cache clean

ENV INSIDE_CONTAINER=1


