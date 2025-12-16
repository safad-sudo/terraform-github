# Create an EC2 instance
resource "aws_instance" "example" {

  # Amazon Linux 2 AMI for ap-south-1 (Mumbai)
  ami = "ami-0a7cf821b91bcccbc"

  # Free-tier eligible instance
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-safad"
  }
}
