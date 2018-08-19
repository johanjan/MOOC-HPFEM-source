FROM ubuntu:bionic-20180724.1

USER root
RUN apt-get update
RUN apt-get install -y software-properties-common module-init-tools python-pip
RUN apt-get install -y python-notebook python3-notebook python3-jupyter-core
RUN add-apt-repository -y ppa:fenics-packages/fenics
RUN apt-get update
RUN apt install -y --no-install-recommends fenics
USER ${NB_USER}

#RUN pip install --no-cache-dir notebook==5.*

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# Specify the default command to run
CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]

