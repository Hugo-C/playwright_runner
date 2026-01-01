FROM mcr.microsoft.com/playwright/python:v1.57.0

RUN pip install --upgrade pip

WORKDIR /code

ADD ./requirements.txt /code/requirements.txt

RUN pip install -r requirements.txt

RUN playwright install --with-deps

ENTRYPOINT ["pytest"]