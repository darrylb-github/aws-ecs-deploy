FROM alpine:latest

RUN apk --update add \
    bash \
    jq \
    py-pip \
    python \
    curl \
    zip && \
  pip install awscli && \
  apk --purge del py-pip && \
  rm var/cache/apk/*

COPY aws-assume-role /usr/local/bin/aws-assume-role
RUN chmod a+x /usr/local/bin/aws-assume-role

COPY aws-ecs-deploy /usr/local/bin/aws-ecs-deploy
RUN chmod a+x /usr/local/bin/aws-ecs-deploy

COPY aws-ecr-clean /usr/local/bin/aws-ecr-clean
RUN chmod a+x /usr/local/bin/aws-ecr-clean
