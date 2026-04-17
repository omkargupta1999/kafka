FROM registry.dev.sbiepay.sbi:8443/ubi9/gradle-8.9-jdk-21:v6

# Add JFrog CLI
COPY jf /usr/local/bin/jf
RUN chmod +x /usr/local/bin/jf

# Add FULL certificate chain (critical)
COPY jfrog-chain.crt /etc/pki/ca-trust/source/anchors/jfrog.crt

# Update trust store
RUN update-ca-trust extract

# Verify
RUN jf --version
