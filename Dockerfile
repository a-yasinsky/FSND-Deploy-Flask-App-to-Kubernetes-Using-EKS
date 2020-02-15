FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pyjwt
RUN pip install gunicorn

ENTRYPOINT ["gunicorn", "-b", ":5000", "main:APP"]
