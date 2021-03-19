[![Build Status](https://dev.azure.com/1robroos/learnhashicorp/_apis/build/status/1robroos.learnhashicorp?branchName=firsttest)](https://dev.azure.com/1robroos/learnhashicorp/_build/latest?definitionId=20&branchName=firsttest)

https://dev.azure.com/1robroos/learnhashicorp/_apis/build/status/1robroos.learnhashicorp?branchName=firsttest

# learnhashicorp
https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws
## test deployed lambda function

```

❯ aws lambda invoke --region=us-east-1 --function-name=ServerlessExample output.txt
{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}
```
```
❯ rm output.txt 
```

With the function working as expected, the next step is to create the API Gateway REST API that will provide access to it.



# to do
cloudwatch permissions
alarms
