resource "aws_instance" "docker_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name = "nameera"
  security_groups = ["default"]
  user_data = file("docker.sh")

  tags = {
    Name = "docker_server-terraform"
  }
}

resource "aws_instance" "tomcatt_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name = "nameera"
  security_groups = ["default"]
  user_data = file("tomcat.sh")

  tags = {
    Name = "tomcat_server-terraform"
  }
}
