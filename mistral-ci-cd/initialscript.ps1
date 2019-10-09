param
(
  [String] [Parameter(Mandatory = $true)] $location,
  [String] [Parameter(Mandatory = $true)] $SUBSCRIPTION_ID
)
az account list --query "[].{name:name, subscriptionId:id, tenantId:tenantId}"

$rg = "rg-terraform"
$storageaccount = "tfstatemaestraldemo"
az group create --location $location --name $rg

az storage account create --name $storageaccount --resource-group $rg --location $location --sku Standard_LRS

az storage container create --name tfstate --account-name $storageaccount

az storage account keys list -g $rg -n $storageaccount

az account set --subscription="${SUBSCRIPTION_ID}"
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
