FROM ubuntu:20.04

ENV PATH /opt/sia/bin:$PATH
ENV SIA_MODULES gctwhr
ENV SIA_DATA_DIR /opt/sia/data
ENV SIAD_DATA_DIR /opt/sia/siad-data

EXPOSE 9980 9981 9982 9983

COPY sia /opt/sia
COPY scripts /scripts

WORKDIR /opt/sia

ENTRYPOINT ["/scripts/init.sh"]
