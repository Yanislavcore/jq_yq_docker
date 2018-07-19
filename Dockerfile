FROM lachlanevenson/k8s-kubectl:v1.10.3
ADD yq /bin/yq
ADD mustache /bin/mustache
ADD helm /bin/helm
RUN apk add --no-cache jq git bash tar wget

RUN mkdir /tmp/kubeval && cd /tmp/kubeval && \
    wget https://github.com/garethr/kubeval/releases/download/0.6.0/kubeval-darwin-amd64.tar.gz && \
    tar xf kubeval-darwin-amd64.tar.gz && \
    cp kubeval /usr/local/bin && \
    cd / && rm -rf /tmp/kubeval
ENTRYPOINT /bin/bash