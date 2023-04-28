# Terraform

## Cheat Sheet
### Basic commands
``terraform init``

``terraform plan``

``terraform apply``

``terraform destroy``
 
``terraform output``

### commands with variable
``terraform plan -var-file=<filename.tfvars>``

``terraform apply -var-file=<filename.tfvars>``

``terraform destroy -var-file=<filename.tfvars>``


## Variables
There is two type of variables.
  1. simple value

     * string
     * number
     * bool
  2. Collection Variable
      
      * map
      * list
      * set, etc

### Locals vs variables


The main difference between locals and variables is their scope and visibility. Locals are only visible within the module or block where they are defined, while variables can be accessed and used throughout the entire configuration. Additionally, variables can be set from the command line or using environment variables, allowing for more flexibility when deploying infrastructure.

## Loops

1. Loops with count
2. Loops with for_each
3. for loop


## Provisioners

1. Generic Provisioners 

   * file
   * local-exec
   * remote-exec

2. Vendor Provisioners
   
   * chef
   * nabitat
   * puppet
   * salt-masterless

**Generic Provisioners**- Generally vendor independent and can be used with any cloud vendor(GCP, AWS, AZURE)


**Vendor Provisioners** - It can only be used only with its vendor. For example, chef provisioner can only be used with chef for automating and provisioning the server configuration.  

### Supporting arguments for file provisioners

1. source
2. destination
3. content

