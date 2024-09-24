# consultar documentação no https://registry.terraform.io
# realizar uma busca por aws instance
# Resource: aws_instance




resource "aws_instance" "dar um nome a essa instancia" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro"
    key_name = "nome da chave criada para acesso a EC2"
    security_groups = [ "allow_ssh", "allow_http", "allow_egress" ]
    user_data = file("script.sh")

    tags = {
      Name= "nome da tag dessa EC2"
    }

  
}






#Comandos terraform para subir uma instancia EC2 de forma automatica na AWS atravez do terminal:
#   terraform.exe plan
#   terraform.exe apply
#   yes
#   terraform destroy







#Resumo:
# ami              é a definição do sistema operacional (exemplo AWS linux: ami-01bc990364452ab3e)
# instace_type     define o tipo de maquina que vc quer (exemplo: CPU, Memoria, etc)
# Key_name         é a chave de acesso remoto a essa instancia EC2 que é criada na Key pairs da AWS, .ppk (PuTTY) para windows ou .pem (OpenSSH) para Linux
# tags             serve para encontrar as Instancias mais rapida caso tenha muitas
# security_groups = [ "allow_ssh", "allow_http", "allow_egress" ]       serve para habilitar/vincular a EC2/VM a esses securitys groups
# user_data =             file("script.sh")      serve para identificar o arquivo que contem um scrit de execução




