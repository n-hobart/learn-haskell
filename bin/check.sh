#!/bin/bash
#
# $ cd /path/to/hwXX
# $ stack build
# $ ../bin/check.sh <name>
#
# This runs the <name>-exe executable on the file data/<name>.in,
# takes the SHA-256 checksum of the output, and compares it to the
# checksum of the correct answer, stored in data/<name>.out.sha256

NAME=${1}

UNAME=`uname -a | cut -d ' ' -f 1`
if [ "${UNAME}" == "Darwin" ]; then
    SHAPROG="shasum -a 256"
elif [ "${UNAME}" == "Linux" ]; then
    SHAPROG="sha256sum"
elif [[ ${UNAME} == MINGW* ]]; then
    SHAPROG="sha256sum | dos2unix"
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
