# Session-24: About IaaC ,AWS CLI,IAM SetUP,ENV Setup Terraform

Infrastructure as a Code:
-------------------------
Infrastructure as a code --> IaaC

1) What is Infrastructure?

2) What is Inframanagement ?

3) What is InfraStructure as a Code?

4) What is Best IaaC Tool?

5) What is Terraform?

    Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

6) What are Advantages of using Terraform?
7) Does Terraform Support Hybrid Cloud environments?
8) HashiCorp Language Syntax
    Contains:
     Variables
     Data Types
     Conditions
     Loops
     Functions
9) Resource Creation Syntax:
    resource "what resource" "name of resources" {
        arguments/options/parameters
    }
    what-resource --> You need to get



# Topics discussed:
    Maps in Variables
    Loops: Count and Count index
    Conditions: When
    Functions: Filters
    Variables: Inputs & Outputs
    Locals
    Data sources
#Tags:
    Key-Value Pairs: 
    Name = "Some-Name"
    Environment = DEV/QA/PROD
    Terraform = true
    Component = MongoDB
    Project = Roboshop
#Loops: 
    Count/Count-Index: Can only be used in module,resource,data blocks not used in outputs,variables,anyother tf files
    Count : 
    "Count-index:"
    For-Each:

#Functions
   The Terraform language does not support user-defined functions, and so only the functions built in to the language are available for use. 
   Functions are the expressions where it can be called when it is required

#Locals:
    Locals is also a type of variables where it contains both Functions and Expressions used

    Named values which can be assigned and used in code
    it mainly servers the purpose of removing duplication within the terraform code 
    
    When you use locals it removes the duplication within the terraform code and hence it improves the readability of the code

#Data-Sources:
    Querying the resources data dynamically from the source

    Already Available resources are used to create new resource

# For-Each Block
    It will create keyword called each then it will iterate through the each.key and each.value
#Dynamic Block:
    It will be used to Create the Particular configurations inside the resource block which are repetative 
    Keyword Used: Dynamic Block
               dynamic "setting" {
                    for_each  = var.ingressrules
                    content {
                        description = setting.value.description
                    }
                }

# State Files and Remote State Files:
    Session -25 See Video and Abhishek Video Also YouTube
    S3 Bucket and DynamoDB Table.

# tfvars:
    tfvars will be replace the default variable values and metion tf-var variables
    it will be useful when we are developing multi environment 
    for different environments we need to give different s3 bucket and differnt varriable names
    different Dynamodb Table
    ** If we do not mentin differnet backent for differnet envirnments terraform will always replace the values **
# Commands :
    terraform grep --help
    terraform plan | grep
    terraform init config

    terraform init -reconfigure -backend-config=PROD/backend.tf --> to make the configuration for prod environment
    terraform init -reconfigure -backend-config=DEV/backend.tf --> to make the configuration for DEV Environment


# How to Maintain the different environments in different repositories

#Modules In terraform : Dont Repeat Yourself 
     create one module code to create instances 
     when ever we need to create instances just call the module using module "ec2-create" {source = "path of the module" }