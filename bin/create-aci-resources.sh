# Login to Azure
az login

# Select the subscription where resources are provisioned
# https://docs.microsoft.com/en-us/cli/azure/manage-azure-subscriptions-azure-cli
az account set -s "5c166002-ef48-416a-9a1b-d01db1962f89"

# Ensure the bash script can be executed
chmod +x ./create-aci-resources.sh

# Call the script, passing in your own params
RESOURCE_GROUP_NAME=custom-rtmp-app-$(whoami)-rg
STORAGE_ACCOUNT_NAME=customrtmp$(whoami)westor
LOCATION_NAME=eastus
LOG_ANALYTICS_WORKSPACE_NAME=custom-rtmp-app-$(whoami)-law

/bin/bash ./create-aci-resources.sh $RESOURCE_GROUP_NAME $STORAGE_ACCOUNT_NAME $LOCATION_NAME $LOG_ANALYTICS_WORKSPACE_NAME

# Take note of the output values, as you need to configure those to YAML file next



/bin/bash ./create-aci-resources.sh custom-rtmp-app-$(whoami)-rg customrtmp$(whoami)westor eastus custom-rtmp-app-$(whoami)-law