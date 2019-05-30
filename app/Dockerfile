FROM continuumio/miniconda
COPY Makefile /dep/Makefile
WORKDIR /dep
RUN apt-get update \
  && apt-get install -y make \
  && make _build
COPY . /app
WORKDIR /app
RUN make _main
