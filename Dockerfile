FROM fedora:30

RUN dnf install -y texlive-scheme-full latexmk

CMD cd /canzoniere && make