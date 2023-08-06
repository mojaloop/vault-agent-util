FROM hashicorp/vault:1.13.5
ARG KUBECTL_VERSION=v1.26.7

# Install dependencies
RUN apk add --no-cache jq yq wget \
    && wget https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl