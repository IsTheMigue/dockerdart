FROM google/dart

ADD . /
WORKDIR /app

ADD pubspec.* /app/
ADD . /app

ENTRYPOINT ["/usr/bin/dart", "./app/main.dart"]
