## Infraestructura como código
<p  align="center">Este projeto automatiza a criação de uma instância EC2 e um banco RDS usando Terraform e realiza o deploy de uma aplicação containerizada via Docker. via GitHub Actions.</p>
  

###  Instalação

<p>Execute o comando de aplicação do terraform:</p>

```
terrafom apply
```
<p>Conecte via SSH na máquina do EC2</p>

```
ssh -i <path_da_chave.pem> ubuntu@<endereco_ipv4_publico>
```
<p>Conecte no RDS via mysql client e insira o password quando solicitado</p>

```
mysql -h <host_do_rds>  -u tperson_user -p
```
<p>Execute a criação da tabela manualmente</p>

```
USE tperson;
CREATE TABLE People (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    cell_phone VARCHAR(15)
);
```

O sistema está no ar:  <b>http://<endereco_ipv4_publico> <b> 