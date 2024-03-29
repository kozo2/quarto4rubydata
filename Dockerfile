FROM rubydata/minimal-notebook:latest
ENV TAG=latest

RUN gem install terminal-table
RUN gem update \
      red_arrow\
      red_amber\
      red-datasets\
      red-datasets-arrow\
      red-arrow-numo-narray\
      matplotlib\
      rover-df
      
Add *.ipynb ./
Add *.png ./
Add *.yml ./

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-lang-japanese \
    texlive-xetex \
    texlive-luatex \
    pandoc \
    pandoc-citeproc \
    lmodern \
    curl \
    zip \
    gdebi-core \
    && rm -rf /var/lib/apt/lists/*
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --non-interactive quarto-linux-amd64.deb
RUN rm quarto-linux-amd64.deb
