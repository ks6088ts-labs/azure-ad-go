# helloworld

## Create Azure resources

### Terraform

[Authenticating using the Azure CLI](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/guides/azure_cli)

```shell
# confirm tenant id
az account list -o table --all --query "[].{TenantID: tenantId, Subscription: name, Default: isDefault}"

# set environment variable
export ARM_TENANT_ID=00000000-0000-2222-2222-222222222222

# initialize terraform
terraform init

# create resources
terraform apply -auto-approve

# parameters for client app are shown in the `output` section of terraform.tfstate

# delete resources
terraform destroy -auto-approve
```

## Confirm authentication

### With Node.js app

- [Tutorial: Sign in users and acquire a token for Microsoft Graph in a Node.js & Express web app](https://learn.microsoft.com/en-us/azure/active-directory/develop/tutorial-v2-nodejs-webapp-msal)
- [Azure-Samples/ms-identity-node](https://github.com/Azure-Samples/ms-identity-node)

```shell
git clone https://github.com/Azure-Samples/ms-identity-node.git
cd ms-identity-node

cd App
# edit .env to fit your environment
npm install
npm start
```
