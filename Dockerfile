# Choose your desired base image
FROM jupyter/datascience-notebook:latest

USER root

# Install from requirements.txt file
COPY ./requirements.txt /tmp/
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt
RUN jupyter serverextension enable --py jupyterlab
