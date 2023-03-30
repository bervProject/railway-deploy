#!/bin/sh -l

if [ $2 ] ; then
  # token provided use with
  export RAILWAY_TOKEN=$2
fi

railway up --detach --service $1 || error_code=$?
if [ "${error_code}" -ne 0 ]; then
    exit $error_code
else
    echo "status=Success" >> $GITHUB_OUTPUT
fi