FROM ubuntu:noble
WORKDIR /workdir
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN apt install -y texlive-latex-extra
RUN apt install -y latexmk
