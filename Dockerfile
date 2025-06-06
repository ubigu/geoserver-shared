ARG GEOSERVER_VERSION="2.27.1"

FROM docker.osgeo.org/geoserver:${GEOSERVER_VERSION}

RUN export INSTALL_EXTENSIONS=true \
    && export STABLE_EXTENSIONS="authkey" \
    && set -e \
    && /opt/install-extensions.sh  && rm /opt/additional_libs/*.zip
