FROM golang:1.15

ENV DEBIAN_FRONTEND=noninteractive

# change timezone from UTC to KST
RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

#
RUN apt-get update && \
	apt-get install -y curl gnupg

# todo something