# Estrutura base para criar imagens dockers personalizadas

# FROM httpd:latest                    Imagen padrão apache ultima versão
# WORKDIR /the/workdir/path            Diretorio de Trabalho caminho de onde esta o servidor que esta com a aplicação instalada
# COPY source dest                     Copiar tudo para o diretorio de trabalho do servidor que esta usando
# EXPOSE port                          Em qual porta sera exposto essa imagem (Abri porta x)


FROM httpd:latest

WORKDIR /the/workdir/path

COPY source dest

EXPOSE 80







#docker build -t usuario_do_DockerHub/minha_imagem:
# build para construir a imagem
# -t            
# usuario_do_DockerHub
# minha_imagem
# :1.0 para idenfificar a versão dessa imagem
# . o ponto no final é pra indicar que o dockerfile esta aqui
# docker imagens
# docker run -dti --name httpd -p 80:80 usuario dockerHub/imagem:1.0
# docker ps


