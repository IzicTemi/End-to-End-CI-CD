#!/bin/sh
OldWorkflowID=$( cat ../urls.txt )
echo $OldWorkflowID
STACKS=$($(aws cloudformation list-stacks --query "StackSummaries[*].StackName" --stack-status-filter CREATE_COMPLETE --no-paginate --output text)) 
echo Stack names: "${STACKS}"
