FROM ubuntu:latest
COPY host.sh /
RUN apt-get -y update && apt-get install -y curl jq
WORKDIR /
ENTRYPOINT [ "./host.sh" ]
