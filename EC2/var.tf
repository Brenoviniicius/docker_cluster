#Variavel da região
variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-2"
}

#Variavel do profile do awscli
variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"
}

#Definindo o id da instância que será usada
variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0ea3c35c5c3284d82"

}

#Definindo a quantidade de instancias que será criada
variable "instance_number" {
  type        = number
  description = ""
  default     = 3
}

#Definindo o timpo de instancia que será criada
variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

#Definindo a chave SSH
variable "instance_public_ssh" {
  type        = string
  description = ""
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDf3qrvC80WlsyDoVcubvsD2JAZk10+RY4SPsXXte+exwIIgXcjyT8wu7JlZan0guSodiE7vPCmnUlPHiXIfPTSvnc41o1/3Csx99mQ6QKoELJcmOnLlCplPSaMBee2Ck2GQ2EumGNwisHc9tIB1CpOajHBiQTCzREofUT+D+2BknCZwvVN3wtJc2GQjpgI+ItLUPseA3xZDGuikKOsfijRQC4FCzSGOs8UUtbYFTCYWKQC8xB7KMf7B1krMKyiwpYSyYNFBu4r4vaaXU0rgzGGyWSI9q+hnPABHaxy0HsvlALDtCjotk7hUI5L5TahhZ2yxOmktzGkkzWv3AmO61Sz breno@DESKTOP-SC9GBS1"
}

