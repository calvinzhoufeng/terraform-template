# A practical Terraform template

*Please note the created VMs or other cloud services will be payable by yourself*

## Key features
* Idemptotent server management thanks to Terraform
* Easy to bring up/down servers and other resources
* Segregate different ENV
* Flexiability to support multiple applications
* Multi-cloud supports, GCP for the first version

## Configuration and Pre-requisite
* terraform 0.11

### To support GCP
* A GCP service account with miminum Compute Engine Editor role

## Ansible structure
*  terraform
	* dev
		```main.tf```
        ```variables.tf```
        ```terraform.tfvars```
    * prod
        ```Same structure and files as dev folder, ```
        ```but different variable values in terraform.tfvars```
    * images
        ```compute.tf```
        ```variables.tf```
        ```output.tf```

## How to use
* Pull out the code
* go to the dev folder and change the values in terraform.tfvars accordingly
* run command:
```terraform init```
```terraform plan -var-file=terraform.tfvars```
```terraform apply -var-file=terraform.tfvars```

### Best practices
* Always update terraform.tfvars to revise servers, e.g. create/destroy an instance, just change the instance_count
* Keep all servers created by Terraform scripts, keep infra as code, e.g. server creation history, attribute updates and etc.
