FROM python:2.7

RUN apt-get update && apt-get install unzip -y

RUN wget https://github.com/BenjV/autosub-bootstrapbill/archive/master.zip && \
    unzip master.zip -d /opt && \
    rm master.zip

RUN pip install cheetah

EXPOSE 8083

WORKDIR /opt/autosub-bootstrapbill-master

CMD ["python2", "AutoSub.py"]
