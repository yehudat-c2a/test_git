FROM ubuntu:22.04 AS checksec_build
RUN apt-get update
RUN apt-get -y install python3-pip patchelf libfontconfig1 curl
RUN pip install fastapi uvicorn[standard]
COPY run.sh /run.sh
RUN chmod a+x /run.sh
ENTRYPOINT ["/run.sh"]