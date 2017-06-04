FROM radumatei/jenkins-slave-docker

WORKDIR /usr/local

RUN apk update \
	&& apk add py-pip make expect python \
	&& pip install --no-cache-dir --upgrade pip \
	&& pip install --no-cache-dir docker-compose \
	&& rm -rf /var/cache/apk/* \
	&& wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz \
	&& tar zxvf google-cloud-sdk.tar.gz \
	&& rm google-cloud-sdk.tar.gz \
	&& ./google-cloud-sdk/install.sh --usage-reporting=true --path-update=true -q \
	&& ln -s /usr/local/google-cloud-sdk/bin /usr/bin \
	&& gcloud components install -q kubectl

ENV INSIDE_CONTAINER=1


