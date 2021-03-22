FROM ubuntu:latest

COPY . .
RUN apt-get update && apt-get upgrade -y &&apt-get install -y pciutils
RUN rm -rf /var/cache/apt/archives && rm -rf /var/lib/apt/lists
RUN dpkg -i mft_4.14.0-105_amd64.deb
CMD ["/bin/bash"]
