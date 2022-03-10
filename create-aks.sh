VNET_ID=$(az network vnet show --resource-group teamResources --name vnet --query id -o tsv)   
SUBNET_ID=$(az network vnet subnet show --resource-group teamResources --vnet-name vnet --name aks-subnet --query id -o tsv)   

aksName="trip-aks-2"
resourceGroupName="rg-aks-2"
vmSize="Standard_D2s_v3"

az aks create \
--name $aksName \
--resource-group $resourceGroupName \
--node-vm-size $vmSize \
--network-plugin azure \
--node-count 3 \
--enable-cluster-autoscaler \
--min-count 3 \
--max-count 6 \
--vnet-subnet-id $SUBNET_ID \
--attach-acr registrynpi4760 \
--enable-aad \
--enable-azure-rbac \
--generate-ssh-keys