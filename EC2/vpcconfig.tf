#Configurando o vpc
resource "aws_security_group" "allow_ssh" {
  name        = "allow ssh connection"
  description = "allow shh and http"

#Liberando acesso na porta 22 para o SSH
  ingress {
    description = "allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#Liberando o acesso na porta 8080 para futuras conexões https
  ingress {
    description = "allow http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#Liberando a porta para o docker swarm
  ingress {
    from_port = 2377
    to_port = 2377
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#Liberando a comunicação tcp entre os nós
  ingress {
    from_port = 7946
    to_port = 7946
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#Liberando a comunicação udp entre os nós
  ingress {
    from_port = 7946
    to_port = 7946
    protocol = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#Liberando a porta para o networking overlay
  ingress {
    from_port   = 4789
    to_port     = 4789
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#Permite conexões de saída de qualquer destino
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}