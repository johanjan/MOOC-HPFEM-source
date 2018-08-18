FROM jupyter/all-spark-notebook:033056e6d164

USER root
RUN apt-get install -y -qq software-properties-common python-software-properties module-init-tools
RUN add-apt-repository -y ppa:fenics-packages/fenics
RUN apt-get update -qq
RUN apt install -y --no-install-recommends fenics
USER ${NB_USER}
