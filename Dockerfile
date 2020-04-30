FROM ubuntu:latest

COPY . .
RUN dpkg -i mft_4.14.0-105_amd64.deb
CMD ["/bin/bash"]