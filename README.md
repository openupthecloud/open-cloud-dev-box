# AWS ACLOUDGURU SANDBOX

Sets up a one-click gitpod environment that prompts you for your AWS secret and access key, enter these two, and you're immediately dropped into an environment with the AWS CLI, set up and ready to go. Once set up, try: 

```
aws-vault exec default --backend=file -- aws lambda list-functions
```
