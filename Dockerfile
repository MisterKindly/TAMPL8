FROM ubuntu:18.04

RUN apt update
RUN apt install -yy  gcc g++ cmake

COPY . /app
WORKDIR /app

RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release
RUN cmake --build _build


ENV LOG_PATH=/logs/log.txt
VOLUME /logs

WORKDIR _install/bin
ENTRYPOINT ["/app/_build/bin/hello"]
