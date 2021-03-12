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
