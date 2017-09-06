#!/bin/bash

NAME=${1}

UNAME=`uname -a | cut -d ' ' -f 1`
if [ "${UNAME}" == "Darwin" ]; then
    SHAPROG="shasum -a 256"
elif [ "${UNAME}" == "Linux" ]; then
    SHAPROG="sha256sum"
else
    echo "Unknown UNAME: ${UNAME}"
    exit 1
fi

stack exec ${NAME}-exe < data/${NAME}.in \
    | ${SHAPROG} \
    | diff - data/${NAME}.out.sha256

if [ $? -eq 0 ]; then
    echo "Correct."
else
    echo "Not correct."
fi
