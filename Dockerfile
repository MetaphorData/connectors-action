FROM python:3.7

RUN pip install "metaphor-connectors[all]~=0.12.0"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
