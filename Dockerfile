FROM metaphordata/connectors:0.12

RUN apt-get clean
RUN apt-get update
RUN apt-get install -y git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
