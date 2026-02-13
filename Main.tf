Provider "aws" { region     = "us-east-1" access_key = "" secret_key = "x" } resource "aws_instance" "opentofuvm" { ami           = "ami-053b0d53c279acc90" instance_type = "t3.micro"

Subnet_id = "subnet-xxxxxxxxxx"