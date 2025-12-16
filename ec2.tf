resource "aws_instance" "web_server" {

  ami           = "ami-0a7cf821b91bcccbc"   # Amazon Linux 2 (ap-south-1)
  instance_type = "t3.medium"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              yum update -y

              amazon-linux-extras install docker -y
              systemctl start docker
              systemctl enable docker

              docker pull YOUR_DOCKERHUB_USERNAME/django-backend:v1
              docker run -d -p 8000:8000 --restart=always \
                YOUR_DOCKERHUB_USERNAME/django-backend:v1
              EOF

  tags = {
    Name = "Terraform-WebApp-EC2"
  }
}
