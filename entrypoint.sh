#!/bin/bash

set -e

CONFIG_FILE="config.yml"
cat ${2} > ${CONFIG_FILE}

if [[ ! -z "${3}" ]]; then
  cat << EOF >> ${CONFIG_FILE}

output:
  file:
    directory: "${3}"
EOF
fi

echo "Generated ${CONFIG_FILE}:"
cat ${CONFIG_FILE}

metaphor ${1} ${CONFIG_FILE}
