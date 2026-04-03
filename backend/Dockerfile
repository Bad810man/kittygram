FROM python:11
WORKDIR /app

COPY . .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

RUN python manage.py migrate
RUN python manage.py runserver
