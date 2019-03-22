FROM pandoc/latex

RUN apk update && apk add \
    bash \
    git

ENTRYPOINT ["/bin/bash"]

WORKDIR /build
