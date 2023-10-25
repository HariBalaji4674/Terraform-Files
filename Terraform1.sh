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