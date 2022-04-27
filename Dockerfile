FROM python:3.8.10
LABEL maintainer="codeg.iq@gmail.com"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /school
COPY requirements.txt /school/
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8000
EXPOSE 8300
COPY . /school/