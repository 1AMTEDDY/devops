provider "aws" {
  region = var.region
}

resource "aws_instance" "ansible-control-instance" {
  ami           = var.ted_ami
  instance_type = var.ted_instance

  tags = {
    Name = "ansible-control"
  }
  key_name = var.key_name
}


resource "aws_instance" "ansible-web-instance" {
  count         = length(var.web_servers)
  ami           = var.ted_ami
  instance_type = var.ted_instance

  tags = {
    Name = element(var.web_servers, count.index)
  }
  key_name = var.key_name

}
