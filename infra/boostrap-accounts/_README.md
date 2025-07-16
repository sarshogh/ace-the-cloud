# deploy boostrap layer 

> aws sso login --profile AutomationAdmin
> terraform init -backend-config=./configs/dev-state.config
> terraform plan -var-file=./tfvars/dev.tfvar