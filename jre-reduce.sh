#!/bin/bash

if [ $# -ne 2 ]; then
    echo "USAGE: ./jre-reduce.sh [profile] [path-to-extracted-jre]"
    echo "profiles: linux-x64 | macosx-x64 | windows-x64"
    echo "example: ./jre-reduce.sh macosx-x64 ~/Desktop/jre1.8.0_144.jre"
    exit 1
fi

set -e

PRO_FILE=`dirname $0`/profile-$1

while read LINE; do
    # trim
    LINE=`echo "$LINE" | xargs`
    # no empty lines
    if [ -z "$LINE" ]; then
        continue
    fi
    # no comments
    if [[ $LINE == \#* ]]; then
        continue
    fi
    rm -r "$2/"$LINE
done < "$PRO_FILE"
