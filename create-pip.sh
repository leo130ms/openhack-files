az network public-ip create --resource-group rg-aks --name tripviewer-pip --sku Standard --allocation-method static

az role assignment create --assignee b27a2ad6-540a-4154-8703-aa13fa79bda5 --role "Network Contributor" --scope /subscriptions/0b98d395-76e0-4bf0-a5fb-2529850f846c/resourceGroups/rg-aks