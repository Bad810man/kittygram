FROM python:3.9
WORKDIR /app

COPY . .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN chmod +x ./docker-entrypoint.sh

EXPOSE 9001
ENTRYPOINT [ "./docker-entrypoint.sh" ]
