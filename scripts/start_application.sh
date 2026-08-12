#!/bin/bash

set -e

echo "Starting application..."

cd /opt/codepipeline-poc

nohup python3 -m gunicorn \
  --bind 0.0.0.0:8080 \
  --workers 2 \
  app:app \
  > /var/log/codepipeline-poc.log 2>&1 &

echo $! > /var/run/codepipeline-poc.pid

echo "Application started."
