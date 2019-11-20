#!/bin/bash

AWS_PROFILE=""
CHANGESET_OPTION="--no-execute-changeset"
CFN_TEMPLATE=ap.yml
if [ -z "${NAME_PREFIX}" ];then
    NAME_PREFIX="seminar-cfn"
fi
CFN_STACK_NAME="${NAME_PREFIX}-ap"

if [ $# = 1 ] && [ $1 = "deploy" ]; then
  echo "deploy mode"
  CHANGESET_OPTION=""
fi

if [ -n "${AWS_PROFILE}" ];then
    PROFILE_OPTION="--profile ${AWS_PROFILE}"
fi

# exec deploy command
aws cloudformation deploy \
    ${PROFILE_OPTION} \
    --stack-name "${CFN_STACK_NAME}" \
    --template-file "${CFN_TEMPLATE}" \
    --capabilities CAPABILITY_IAM \
    --parameter-overrides SshKey=shigemi \
                          NamePrefix="${NAME_PREFIX}" \
    ${CHANGESET_OPTION}
