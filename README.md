# learn-terraform-azure

[![Terraform](https://github.com/azure-pocs/learn-terraform-azure/actions/workflows/terraform.yml/badge.svg)](https://github.com/azure-pocs/learn-terraform-azure/actions/workflows/terraform.yml)

Practices of this guide: [Get Started - Azure](https://developer.hashicorp.com/terraform/tutorials/azure-get-started).

Commands I've learned:
```shell
az login
az account set --subscription "<subscription-id>"
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription-id>"

export ARM_CLIENT_ID="<client-id>"
export ARM_CLIENT_SECRET="<client-secret>"
export ARM_SUBSCRIPTION_ID="<subscription-id>"
export ARM_TENANT_ID="<tenant-id>"

terraform init
terraform fmt
terraform validate

terraform apply

terraform show
terraform state list
terraform state
terraform state pull azurerm_resource_group.rg

terraform destroy

terraform apply -var "resource_group_name=myNewResourceGroupName"

terraform output resource_group_id

#### Terraform Cloud ####
terraform login
terraform init

```