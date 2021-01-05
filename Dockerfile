FROM danielschulz/python:v3.8

RUN apt-get update && \
    apt-get install -y git jq
RUN pip install black

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
