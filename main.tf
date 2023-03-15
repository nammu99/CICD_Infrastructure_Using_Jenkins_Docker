resource "aws_instance" "tomcat_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name        = "nameera"
  security_groups = ["default"]
  user_data = file("tomcat.sh")

  tags = {
    Name = "Tomcatserver-terraform"
  }
}
  resource "aws_security_group" "default" {
    tags = {
    type = "terraform-security-group"
}
}

resource "aws_instance" "jenkins_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name        = "nameera"
  security_groups = ["default"]
  user_data = file("jenkins.sh")

  tags = {
    Name = "Jenkins_server-terraform"
  }
}
