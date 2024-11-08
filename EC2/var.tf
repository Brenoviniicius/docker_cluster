variable "aws_region" {
  type = string
  description = ""
  default = "us-east-2"
}

variable "aws_profile" {
  type = string
  description = ""
  default = "default"
}

variable "instance_ami" {
  type = string
  description = ""
  default = "ami-0ea3c35c5c3284d82"

}

variable "instance_type" {
  type = string
  description = ""
  default = "t2.micro"
}
