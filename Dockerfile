FROM jupyter/base-notebook

# vscode(cursor)でpipでパッケージ管理を自動化
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt