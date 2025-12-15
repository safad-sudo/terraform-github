# This resource block creates an EC2 instance in AWS
resource "aws_instance" "example" {

  # AMI ID for Amazon Linux 2 in ap-south-1 (Mumbai)
  ami = "ami-0a7cf821b91bcccbc"

  # Instance size (free-tier eligible)
  instance_type = "t2.micro"

  # Tags help identify resources in AWS console
  tags = {
    Name = "Terraform-GitHub-EC2"
  }
}
