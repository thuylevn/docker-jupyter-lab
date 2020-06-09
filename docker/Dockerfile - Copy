# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/pyspark-notebook
FROM $BASE_CONTAINER

### this is no longer accurate
#LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

### changed from root to ec2-user to see if this works
### edit: the above causes permissions issues, so I've reverted the change
USER root
#USER ec2-user

### added the section below based on the following article:
###   https://towardsdatascience.com/adding-jupyter-notebook-extensions-to-a-docker-image-851bc2601ca3
########################
FROM python:3.7
#FROM jupyter/minimal-notebook
FROM jupyter/pyspark-notebook
WORKDIR $HOME
### added an environment variable which enables the use of Jupyter Lab by default
ENV JUPYTER_ENABLE_LAB yes
RUN python -m pip install --upgrade pip
COPY requirements.txt ./requirements.txt
RUN python -m pip  install -r requirements.txt
RUN python -m pip install --upgrade --no-deps --force-reinstall notebook
#
RUN python -m pip install jupyterlab-git
RUN python -m pip install --upgrade jupyterlab-git
RUN python -m pip install jupyter_contrib_nbextensions
RUN python -m pip install --upgrade jupyter_contrib_nbextensions
RUN python -m pip install jupyterthemes
RUN python -m pip install --upgrade jupyterthemes
########################
#FROM python:3.7
#FROM jupyter/minimal-notebook
#WORKDIR $HOME
#RUN python -m pip install --upgrade pip
#COPY requirements.txt ./requirements.txt
#RUN python -m pip  install -r requirements.tx
#RUN python -m pip install --upgrade --no-deps --force-reinstall notebook
##
#RUN python -m pip install jupyterthemes
#RUN python -m pip install --upgrade jupyterthemes
#RUN python -m pip install jupyter_contrib_nbextensions
#RUN jupyter contrib nbextension install --user
# enable the Nbextensions
RUN jupyter nbextension enable contrib_nbextensions_help_item/main
RUN jupyter nbextension enable autosavetime/main
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable code_font_size/code_font_size
RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable collapsible_headings/main
RUN jupyter nbextension enable comment-uncomment/main
RUN jupyter nbextension enable equation-numbering/main
RUN jupyter nbextension enable execute_time/ExecuteTime 
RUN jupyter nbextension enable gist_it/main 
RUN jupyter nbextension enable hide_input/main 
RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable toc2/main
RUN jupyter nbextension enable toggle_all_line_numbers/main
RUN jupyter nbextension enable jupyterlab-git

########################
### added the following line to set a password for the notebook server via the
### $PASSWORD environment variable, called on the command line via
### docker run ... -e PASSWORD=$PASSWORD ...
###     -- Kyle Thomsen, 06 May 2020
###
### TODO: add logic to disallow empty password strings
RUN jupyter notebook password $PASSWORD
########################

# RSpark config
ENV R_LIBS_USER $SPARK_HOME/R/lib
RUN fix-permissions $R_LIBS_USER

USER root

# R pre-requisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-dejavu \
    gfortran \
    gcc
#    rm -rf /var/lib/apt/lists/*
#    rm -rf /var/lib/apt/lists/*

USER $NB_UID

# R packages
RUN conda install --quiet --yes \
    'r-base=3.6.3' \
    'r-ggplot2=3.3*' \
    'r-irkernel=1.1*' \
    'r-rcurl=1.98*' \
    'r-sparklyr=1.1*' \
    && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Apache Toree kernel
RUN pip install --no-cache-dir \
    https://dist.apache.org/repos/dist/release/incubator/toree/0.3.0-incubating/toree-pip/toree-0.3.0.tar.gz \
    && \
    jupyter toree install --sys-prefix && \
    rm -rf /home/$NB_USER/.local && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Spylon-kernel
RUN conda install --quiet --yes 'spylon-kernel=0.4*' && \
    conda clean --all -f -y && \
    python -m spylon_kernel install --sys-prefix && \
    rm -rf /home/$NB_USER/.local && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
