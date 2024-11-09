resource "aws_instance" "swarm" {
  count         = var.instance_number
  ami           = var.instance_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name = "public"

  tags = merge(
    local.common_tags, {
      Project = "Cluster Swarm"
      Name    = ("cluster-${count.index + 1}")
    }
  )
}

resource "aws_key_pair" "public_ssh" {
  key_name   = "public"
  public_key = var.instance_public_ssh
}


