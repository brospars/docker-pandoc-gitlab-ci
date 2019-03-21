FROM debian

# Install dependencies
RUN apt-get -yq update && apt-get install -y python-pip wget lmodern fonts-lmodern
RUN wget https://github.com/jgm/pandoc/releases/download/2.7.1/pandoc-2.7.1-1-amd64.deb && \
    dpkg -i pandoc-*-amd64.deb && \
    pip install pandocfilters && \
    apt-get clean -y && \
    rm -rf pandoc-*-amd64.deb /var/lib/apt/lists/* /tmp/* /var/tmp/*
