#!/bin/sh

echo y | fly -t azr sp -p metflix-membership -c pipeline.yml -l ../../credentials.yml
