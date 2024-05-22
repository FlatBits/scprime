FROM ubuntu:22.04

ENV PATH /opt/scprime/bin:$PATH
ENV SCPRIME_MODULES gctwhr
ENV SCPRIME_DATA_DIR /opt/scprime/data
ENV DAEMON_DATA_DIR /opt/scprime/daemon-data

EXPOSE 4282 4283 4285

RUN apt-get update && apt-get install -y ca-certificates

COPY scprime /opt/scprime

WORKDIR /opt/scprime

ENTRYPOINT spd -M "${SCPRIME_MODULES}"
