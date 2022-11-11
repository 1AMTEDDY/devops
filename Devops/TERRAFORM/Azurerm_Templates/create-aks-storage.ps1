###CREATE STORAGE

#begin
# Update with the name of your subscription.
$SubscriptionName = "YourSubscriptionName"

# Give a name to your new storage account. It must be lowercase!
$StorageAccountName1 = "yourstorageaccountname"
$StorageAccountName2 = "yourstorageaccountname"

# Choose "West US" as an example.
$Location = "West US"

# Give a name to your new container.
$ContainerName1 = "imagecontainer"
$ContainerName2 = "imagecontainer"

# Add your Azure account to the local PowerShell environment.
Add-AzureAccount

# Set a default Azure subscription.
Select-AzureSubscription -SubscriptionName $SubscriptionName –Default

# Create a new storage account.
New-AzureStorageAccount –StorageAccountName $StorageAccountName1 -Location $Location
New-AzureStorageAccount –StorageAccountName $StorageAccountName2 -Location $Location

# Set a default storage account.
#Set-AzureSubscription -CurrentStorageAccountName $StorageAccountName -SubscriptionName $SubscriptionName

# Create a new container.
New-AzureStorageContainer -Name $ContainerName1 -Permission Off

New-AzureStorageContainer -Name $ContainerName2 -Permission blob
