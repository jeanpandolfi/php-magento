# php-magento :elephant:
Repositório para o Dockerfile:whale2: da imagem https://hub.docker.com/r/jeanpandolfi/php-magento

## Pra que serve essa imagem?
 Essa imagem pode ser utilizada para executar o Magento 2, visto que já tem suas dependências instaladas usando a ferramenta https://github.com/mlocati/docker-php-extension-installer que está configurado na imagem.
 
## Extensões instaladas
  * *gd*
  * *bcmath* 
  * *intl*
  * *xsl*
  * *pdo_mysql*
  * *soap*
  * *zip*
  * *sockets*
  * **OBS:** A preparação foi produzida em cima da imagem [php:7.3-apache](https://hub.docker.com/_/php) com a utilização do pacote [docker-php-extension-installer](https://github.com/mlocati/docker-php-extension-installer) para a adição de extensões que é recomendada na imagem oficial do PHP.

## Como usar essa imagem?
 Dentro do diretório que contenha a pasta do magento2 basta compartilhar o volume com o container. Isso pode ser feito com o comando:
 
 `docker run -p 80:80 -name my-apache-php-magento -v $PWD:/var/www/html/ jeanpandolfi/php-magento:latest`
 
 Após o comando é só acessar http://localhost:80/nome-do-diretório-atual que começará a instalação.
 
 ## Como personalisar a imagem?
  É bem provável que você deseje adicionar mais extensões para isso use faça um Dockerfile adicionando as dependências necessárias utilizando o gerenciador que já está na imagem.
  
 ### Dicas
 * No momento em que você for colocar o host do seu banco de dados coloque o IP `127.0.0.1` ao invés de `localhost`.

Se esse repositório te ajudou de alguma forma de um :star: como agradecimento :wink: :grinning:.

![alt text](https://github.com/jeanpandolfi/php-magento/master/image.jpg?raw=true)
