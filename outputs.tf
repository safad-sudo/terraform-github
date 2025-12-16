output "web_app_url" {
  value = "http://${aws_instance.web_server.public_ip}:8000"
}
