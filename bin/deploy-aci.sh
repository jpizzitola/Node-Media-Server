# Use same resource group name as in previous step
RESOURCE_GROUP_NAME=PizzaPulls
az container create --resource-group $RESOURCE_GROUP_NAME -f rtmp-base.yml

# Get the ACI's address info after deployment
az container show -g $RESOURCE_GROUP_NAME -n pizzapulls-rtmp --query ipAddress

echo -n "Press [ENTER] to continue,...: "
read var_name
echo "You can go on!...."