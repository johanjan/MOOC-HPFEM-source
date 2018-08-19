FROM ubuntu:bionic-20180526@sha256:c8c275751219dadad8fa56b3ac41ca6cb22219ff117ca98fe82b42f24e1ba64e

USER root
RUN uname -a
RUN apt-get update
RUN add-apt-repository -y ppa:fenics-packages/fenics
RUN apt-get update -qq
RUN apt install -y --no-install-recommends fenics
USER ${NB_USER}
