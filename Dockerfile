FROM google/dart

ADD . /
WORKDIR /app

ENV PORT=8080

ADD . /app

ENTRYPOINT ["/usr/bin/dart", "./app/main.dart"]
