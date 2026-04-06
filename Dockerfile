FROM docker.io/redhat/ubi9:latest

LABEL name="rhelgit-oc-helm"
LABEL purpose="git + oc + helm for air-gapped CI"

# Install required tools
RUN dnf install -y \
    git \
    tar \
    gzip \
    ca-certificates \
    && dnf clean all

# Copy oc and helm binaries
COPY oc /usr/local/bin/oc
COPY helm /usr/local/bin/helm

RUN chmod +x /usr/local/bin/oc /usr/local/bin/helm

# Verify tools
RUN git --version && oc version --client && helm version
