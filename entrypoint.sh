#!/bin/sh -l

detach=""
if [ $2 ] ; then
  detach="--detach"
fi

error_code=0
railwayCmd="railway up --service $1 "${detach}""
eval $railwayCmd || error_code=$?

if [ "${error_code}" -ne 0 ]; then
    exit $error_code
else
    echo "status=Success" >> $GITHUB_OUTPUT
fi