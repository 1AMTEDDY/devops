variable "region" {
  default = "us-east-1"
}

variable "ted_ami" {
  default = "ami-052efd3df9dad4825"
}

variable "ted_instance" {
  default = "t2.micro"
}

variable "web_servers" {
  type = list(string)
  default = [
    "ansi_ted-web-1",
    "ansi_ted-web-2",
    "ansi_ted-web-3",
  ]
}

variable "key_name" {
  default = "cloudtest"
}
