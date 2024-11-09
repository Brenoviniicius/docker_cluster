resource "aws_instance" "swarm" {
  count         = var.instance_number
  ami           = var.instance_ami
  instance_type = var.instance_type
  
  tags          = merge(
    local.common_tags, {
        Project = "Cluster Swarm"
        Name = ("cluster-${count.index + 1}")
    }
  )
}
