provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR_ACCESS_KEY"   
  secret_key = "YOUR_SECRET_KEY"   
}

resource "aws_instance" "opentofuvm" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"
  subnet_id     = "subnet-xxxxxxxxxx"  

  tags = {
    Name = "OpenTofuVM"
  }
}
