###CREATE STORAGE

#begin
# Update with the name of your subscription.
#$SubscriptionName = "Development"
Set-AzContext <subscription-ID>

# Give a name to your new storage account. It must be lowercase! and be unique
$StorageAccountName = ""
$ResourceGroup = ""
$SkuName = ""


# Choose "West US" as an example.
$Location = ""

# Give a name to your new container.

$ContainerName = ""


# Add your Azure account to the local PowerShell environment.
#Add-AzAccount -UseDeviceAuthentication

# Set a default Azure subscription.
#Select-AzSubscription -SubscriptionName $SubscriptionName –DefaultProfile

# Create a new storage account.
New-AzStorageAccount –StorageAccountName $StorageAccountName -ResourceGroupName $ResourceGroup  -Location $Location -SkuName $SkuName -kind Storage


# Set a default storage account.
#Set-AzureSubscription -CurrentStorageAccountName $StorageAccountName -SubscriptionName $SubscriptionName

#set context
$Context = (Set-AzCurrentStorageAccount -ResourceGroupName $ResourceGroup -Name $StorageAccountName).Context
# Create a new container.
New-AzStorageContainer -Name $ContainerName -Permission Off -Context $Context

