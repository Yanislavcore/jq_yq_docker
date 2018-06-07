FROM lachlanevenson/k8s-kubectl:v1.10.3
ADD yq /bin/yq
ADD kubeval /bin/kubeval
ADD mustache /bin/mustache
RUN apk add --no-cache jq git bash
ENTRYPOINT /bin/bash