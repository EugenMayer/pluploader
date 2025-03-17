FROM python:3.11

ARG PL_VERSION=">=0.9.2"

RUN mkdir /workdir \
 && pip3 install --no-cache-dir "pluploaderng==$PL_VERSION"

WORKDIR /workdir

ENTRYPOINT [ "pluploaderng" ]
