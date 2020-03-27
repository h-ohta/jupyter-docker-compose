# Choose your desired base image
FROM jupyter/datascience-notebook:latest

# Install from requirements.txt file
COPY ./requirements.txt /tmp/
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt

# Install 

# variable inspector
RUN jupyter labextension install @lckr/jupyterlab_variableinspector
RUN jupyter labextension install @jupyterlab/toc

# code formatter
RUN pip install jupyterlab_code_formatter
RUN jupyter labextension install @ryantam626/jupyterlab_code_formatter
RUN jupyter serverextension enable --py jupyterlab_code_formatter

# lsp
RUN pip install --pre jupyter-lsp
RUN jupyter labextension install @krassowski/jupyterlab-lsp
RUN pip install python-language-server[all]
