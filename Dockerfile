FROM jupyter/scipy-notebook:17aba6048f44

COPY requirements.txt /opt/
RUN pip install -r /opt/requirements.txt

CMD jupyter notebook --NotebookApp.token=''
