FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pyjwt
RUN pip install gunicorn

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:5000", "main:APP"]

EXPOSE 8080:5000
