FROM continuumio/miniconda
COPY . /app
WORKDIR /app
RUN apt-get update \
  && apt-get install -y make \
  && make _build
