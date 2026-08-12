#!/bin/bash

echo "Stopping application..."

if [ -f /var/run/codepipeline-poc.pid ]; then

    PID=$(cat /var/run/codepipeline-poc.pid)

    if kill -0 "$PID" 2>/dev/null; then
        kill "$PID"
        sleep 2
    fi

    rm -f /var/run/codepipeline-poc.pid

fi

echo "Application stopped."
