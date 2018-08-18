FROM jupyter/all-spark-notebook:033056e6d164

RUN add-apt-repository -y ppa:fenics-packages/fenics
RUN apt-get update -qq
RUN apt install -y --no-install-recommends fenics
