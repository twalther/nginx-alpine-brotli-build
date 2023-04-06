#!/usr/bin/env bash

if [ -z "$1" ]
	then
    	echo "Need VERSION argument"
    	exit 1
fi

docker buildx build -t "nginx-alpine-brotli-build:$1" --build-arg VERSION="$1" .