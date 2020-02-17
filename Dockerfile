FROM cimg/base:2020.01

LABEL maintainer="Roopak Venkatakrishnan <mail+packer-ci@roopakv.com>"

ENV PACKER_VERSION=1.5.4

RUN sudo apt-get update && sudo apt-get install -y unzip --no-install-recommends


RUN curl "https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip" --output packer.zip
RUN sudo mkdir -p /usr/local/packer && sudo unzip packer.zip -d /usr/local/packer

ENV PATH /usr/local/packer:$PATH