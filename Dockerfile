FROM google/dart

ADD . /
WORKDIR /app

ADD . /app

ENTRYPOINT ["/usr/bin/dart", "./app/main.dart"]
