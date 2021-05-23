FROM python:3.8-alpine

RUN apk --update add --no-cache g++ git

RUN pip install --upgrade \
  pip setuptools wheel
  prefect[postgres,gcp] pg8000 \
  sqlalchemy sqlakeyset \
  pandas \
  google-cloud-bigquery[pandas,pyarrow] google-cloud-sqlcommenter gcsfs \
  opentelemetry-sdk opentelemetry-api opentelemetry-exporter-gcp-trace
  
