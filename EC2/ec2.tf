#Declarando o recurso Ec2
resource "aws_instance" "swarm" {
  count         = var.instance_number
  ami           = var.instance_ami
  instance_type = var.instance_type
  
#Declarando o nome do recurso
  tags          = merge(
    local.common_tags, {
        Project = "Cluster Swarm"
        Name = ("cluster-${count.index + 1}")
    }
  )
}
