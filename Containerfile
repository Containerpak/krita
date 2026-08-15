FROM ghcr.io/containerpak/mesa64:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/krita"

RUN apt-get update && \
    apt-get install -y --no-install-recommends krita && \
    cpak-clean-junk

COPY org.kde.krita.desktop /usr/share/applications/org.kde.krita.desktop
