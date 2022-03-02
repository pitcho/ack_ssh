# Adiciona chave ssh ao servidor remoto

Script simples para adicionar suas chaves ssh a um servidor remoto.

Uma task ansible resolveria, mas nem sempre é possivel acesso remoto direto ou com poucos saltos.

## Como utilizar

- Disponibilize sua chave publica id_rsa.pub em uma site
  - Ex. https://site.io/s
- Ajuste o script para apontar para o endereço da chave.
- Disponibilize o script em algum site ou utilize a url de download a partir do seu github
  - Ex. https://site.io/b
- Execute:
    curl https://site.io/b | bash



