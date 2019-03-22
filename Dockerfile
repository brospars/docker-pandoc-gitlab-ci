FROM pandoc/latex

RUN apk update && apk add \
    bash \
    git

ENTRYPOINT ["/bin/sh"]

WORKDIR /build
