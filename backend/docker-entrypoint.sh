#!/bin/bash

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate --noinput

# Collect static files
echo "Collect static files"
python manage.py collectstatic --noinput

# Start server
echo "Starting server"
gunicorn kittygram_backend.wsgi --bind 0.0.0.0:9001 --workers 4
