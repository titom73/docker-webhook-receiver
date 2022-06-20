FROM python:3.9-slim

# EXPOSE 80

WORKDIR /local
COPY . /local

LABEL maintainer="Thomas Grimonet <tom@inetsix.net>"
LABEL com.example.version="edge"
LABEL com.example.release-date="2022-06-20"
LABEL com.example.version.is-production="False"

RUN pip install .

ENTRYPOINT ["python", "-u"]
CMD [ "bin/webhook-receiver" ]
