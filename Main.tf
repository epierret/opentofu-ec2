provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR_ACCESS_KEY"   # À remplir
  secret_key = "YOUR_SECRET_KEY"   # À remplir
}

resource "aws_instance" "opentofuvm" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"
  subnet_id     = "subnet-xxxxxxxxxx"  # Remplace par ton subnet réel

  tags = {
    Name = "OpenTofuVM"
  }
}