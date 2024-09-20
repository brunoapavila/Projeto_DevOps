# consultar documentação no https://registry.terraform.io
# procurar por aws security group
# Resource: aws security group




resource "aws_security_group" "dar um nome a esse recurso como allow_ssh" {
    name = "allow_ssh"
    description = "exemplo: permitir acesso remoto via porta 22 (ssh)"
    #vpc_id = aws_vpc.main.id


    ingress = {
        description = "SSH from VPC"
        from_port = 22
        to_port =22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_blocks]

    }

    tags = {
      Name = "allow_ssh"
    }


}






resource "aws_security_group" "dar um nome a esse recurso como allow_http" {
    name = "allow_http"
    description = "exemplo: permitir acesso remoto via porta 80 (http)"
    #vpc_id = aws_vpc.main.id


    ingress = {
        description = "HTTP from VPC"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_blocks]

    }

    tags = {
      Name = "allow_http"
    }

}







resource "aws_security_group" "dar um nome a esse recurso como allow_egress" {
    name = "allow_egress"
    description = "exemplo: permitir egress"
    #vpc_id = aws_vpc.main.id


    egress = {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]

    }

    tags = {
      Name = "allow_egress"
    }

}











#resumos:
# ingress            é o acesso externo ao acesso interno na vm
# cidr_blocks =             ["0.0.0.0/0"]     quer dizer que todos de fora pode acessar
# egress             é da vm interno para o externo





