#Connect to your office / azureAD account 
Connect-AzureAD

#look at the skus you have purchased 
Get-AzureADSubcribedSKu | Select -Property SKu*,ConsumedUnits -ExpandProperty Prepaidunits 

#
Get-AzureADSubscribedSku | Select SkuPartNumber


$licenses = Get-AzureADSubscribedSKu


#Shows all of the Service Plan IDs. 
$licenses[1].ServicePlans

