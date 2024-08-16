# Guia de Instalação do PostgreSQL

![](/images/Postgres/postgresql_logo.png)

Este guia irá orientá-lo passo a passo na instalação do PostgreSQL em Windows. PostgreSQL é um poderoso sistema de gerenciamento de banco de dados relacional de código aberto.

## 1. Instalação no Windows

### 1.1 Baixar o Instalador

1. Acesse o site oficial do PostgreSQL: [https://www.postgresql.org/download/](https://www.postgresql.org/download/). Ou [clique aqui](https://www.dropbox.com/scl/fi/rcv94tu0di94x5tgjmjgx/postgresql-16.3-2-windows-x64.exe?rlkey=3tqfnut81j2kws6w6n7bgo6db&dl=0).
2. Clique em "Download the installer" sob a seção do Windows.
3. Isso redirecionará para o site do [EDB](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads), onde você pode escolher a versão do PostgreSQL que deseja instalar.
4. Escolha a versão desejada e clique em "Download".

### 1.2 Executar o Instalador

1. Após o download, execute o instalador.
2. Na tela de boas-vindas, clique em "Next".

![](/images/Postgres/1.png)

3. Escolha o diretório de instalação (por padrão é `C:\Program Files\PostgreSQL\<versão>`).

![](/images/Postgres/2.png)

4. Selecione os componentes que deseja instalar. Recomendo que desmarque a opção Stack Builder.

![](/images/Postgres/3.png)

5. Escolha o diretório de dados onde o PostgreSQL armazenará os bancos de dados.

![](/images/Postgres/4.png)

6. Defina uma senha para o usuário "postgres" (este é o superusuário do banco de dados).

![](/images/Postgres/5.png)

7. Escolha a porta em que o PostgreSQL será executado (a porta padrão é 5432).

![](/images/Postgres/6.png)

8. Selecione o local do PostgreSQL (deixe como padrão).
9. Clique em "Next" até chegar ao botão "Install". Clique nele para iniciar a instalação.

### 1.3 Finalizando a Instalação

1. Após a instalação, você pode optar por iniciar o Stack Builder para instalar módulos adicionais. Caso não precise, desmarque esta opção e clique em "Finish". Isso irá ocorrer caso você não desmarque a opção do Stack Builder.
2. O PostgreSQL estará instalado e rodando como um serviço no Windows.

## 2. Acessando o PostgreSQL

Após a instalação, você pode acessar o PostgreSQL usando a interface de linha de comando `psql` ou uma interface gráfica como o pgAdmin.

### 2.1 Usando o psql

1. Abra o terminal ou prompt de comando.
2. Digite:
   ```sh
   psql -U postgres
   ```
3. Insira a senha do usuário `postgres` que você definiu durante a instalação.

### 2.2 Usando o pgAdmin

1. Abra o pgAdmin, que geralmente é instalado junto com o PostgreSQL.
2. Adicione um novo servidor clicando com o botão direito em "Servers" e selecionando "Create -> Server".
3. Configure o servidor com o nome que desejar e, em seguida, na aba "Connection", insira `localhost` na opção "Host", `postgres` em "Username" e a senha que você configurou.

## 5. Conclusão

Parabéns! Você instalou com sucesso o PostgreSQL no seu sistema. Agora você pode começar a criar bancos de dados e trabalhar com SQL. Se precisar de mais informações, a [documentação oficial do PostgreSQL](https://www.postgresql.org/docs/) é um excelente recurso.

---

* [Voltar para a Documentação Principal](/README.md)
