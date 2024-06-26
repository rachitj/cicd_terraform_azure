# Setup Terraform

1. Install Terraform : https://developer.hashicorp.com/terraform/install
2. Extract the executable to a directory of your choosing
3. Update your system's global PATH environment variable to include the directory that contains the executable.
4. Video: https://www.youtube.com/watch?v=jFg6VHnt3e8
5. Check terraform on terminal : terraform --version
6. Check azure cli on terminal : az --version

# Initialize terraform

1. Create main.tf
2. Add source
3. Terminal :
   1. terraform init
   2. terraform validate : to validate the terraform
   3. terraform fmt : to format the terraform files, remove spaces etc.
   4. terraform plan -out=plan -var-file="D:/codes/Projects/de/terraform_azure_de/variables.tfvars" ( please input your location of project here)
   5. terraform apply -var-file="D:/codes/Projects/de/terraform_azure_de/variables.tfvars"
   6. terraform destroy -var-file="D:/codes/Projects/de/terraform_azure_de/variables.tfvars"

# tfvars

Please note that tf.vars is not included in the git. Please add it to the project with the required information. It should match variables.tf in the root location.

# environment

I have created environment.yaml file though for this project, this can be skipped. If you plan to add other files like python, then it would be included.

# Destroy

Please note that it is important to destroy the resources once the project is completed.
