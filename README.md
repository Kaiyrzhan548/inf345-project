# Notes service

## What the project does
A small HTTP service. GET / returns a greeting, GET /healthz returns ok with status 200, and GET /notes returns the number of notes.

## How to run

    ./scripts/run.sh

## How to test

    ./scripts/test.sh

It prints a line like TESTS: 3/3.

## Port
The service listens on the port from the PORT environment variable (default 8080), on 0.0.0.0.
