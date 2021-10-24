FROM python-3.9.1:alpine
MAINTAINER Mrli 1063052964qq.com
RUN tar -zcf app.tar.gz .
ADD app.tar.gz /app
WORKDIR /app
RUN pip install -r local_requiements.txt
ENTRYPOINT python app/main.py
