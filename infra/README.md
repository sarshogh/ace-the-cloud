# requirement for how to run infra
```
1. By User 
2. By GitLab CI
3. By GitHub Action
```

1. By SRE/Cloud Engineer User

> aws configure ... 

the IAM User with accesskey/secretkey or sso profile needed

### Versions

`terraform 0.13+`.  
`terraform aws provider 6.3.0`. 


#### Bootstrap account 
this folder contains basic resources on aws like IAM role, Landing Zone /Control Tower setup / OIDC setup / Cross accounts IAMs ... 

### Environments
this folder is to steup full non-prod environment for a standard Kubenrnetes appplicaion 

# 
