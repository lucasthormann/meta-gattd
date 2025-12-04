# Dockerfile
FROM arm64v8/ubuntu:24.04
LABEL maintainer="lucasthormann2@gmail.com"
RUN apt-get update && apt-get install -y \
  bluez \
  dbus \
  python3-dbus \
  python3-gi

# My app code, binaries, etc.
COPY . /app
WORKDIR /app

# Example app run
CMD ./entrypoint.sh
