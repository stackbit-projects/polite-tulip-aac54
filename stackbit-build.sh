#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5feaac5402664a001516d0a2/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/5feaac5402664a001516d0a2/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://api.stackbit.com/project/5feaac5402664a001516d0a2/webhook/build/publish > /dev/null
