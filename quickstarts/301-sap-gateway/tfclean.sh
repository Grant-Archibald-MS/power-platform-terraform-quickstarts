#!/bin/sh
echo "#######################################"
echo "##     Remove Terraform files 	   ##"
echo "#######################################"
# Prompt the user for input
echo "This SH will detroy your Terraform configuration and will delete terraform files."
echo "If you want to remove terraform files please enter 'yes' or 'no':"
read user_input
# Check the user's response
if [ "$user_input" = "yes" ]; then
    echo "You chose 'yes'."
    echo "rm .terraform.lock.hcl"
    rm .terraform.lock.hcl
    echo "rm terraform.tfstate"
    rm terraform.tfstate
    echo "rm terraform.tfstate.backup"
    rm terraform.tfstate.backup
    echo "rm out.plan"
    rm out.plan
    rm /mnt/c/VSCODE/IaC-TF-Provider-BAPImain/power-platform-terraform-quickstarts/quickstarts/301-sap-gateway/.terraform/modules/modules.json
    rm -rf /mnt/c/VSCODE/IaC-TF-Provider-BAPImain/power-platform-terraform-quickstarts/quickstarts/301-sap-gateway/.terraform/modules/registry.terraform.io/hashicorp/random/3.1.0
    rm -rf /mnt/c/VSCODE/IaC-TF-Provider-BAPImain/power-platform-terraform-quickstarts/quickstarts/301-sap-gateway/.terraform/providers/registry.terraform.io/hashicorp/random/3.6.0/linux_amd64/terraform-provider-random_v3.6.0_x5
    rm -rf /mnt/c/VSCODE/IaC-TF-Provider-BAPImain/power-platform-terraform-quickstarts/quickstarts/301-sap-gateway/.terraform/providers/registry.terraform.io/hashicorp/azurerm/3.97.1/linux_amd64/terraform-provider-azurerm_v3.97.1_x5
    rm -rf /mnt/c/VSCODE/IaC-TF-Provider-BAPImain/power-platform-terraform-quickstarts/quickstarts/301-sap-gateway/.terraform/providers/aztfmod/azurecaf/1.2.28/linux_amd64/terraform-provider-azurecaf_v1.2.28_x5
    rm -rf /mnt/c/VSCODE/IaC-TF-Provider-BAPImain/power-platform-terraform-quickstarts/quickstarts/301-sap-gateway/.terraform/providers/aztfmod/azurecaf/1.2.28/linux_amd64/README.md
    rm -rd /mnt/c/VSCODE/IaC-TF-Provider-BAPImain/power-platform-terraform-quickstarts/quickstarts/301-sap-gateway/.terraform
elif [ "$user_input" = "no" ]; then
    echo "You chose 'no'."
else
    echo "Invalid input. Please enter 'yes' or 'no'."
fi
echo "#######################################"