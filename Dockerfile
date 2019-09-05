FROM python:3.6

ENV APP_HOME /env
WORKDIR $APP_HOME
COPY . $APP_HOME

RUN pip install -r requirements.txt