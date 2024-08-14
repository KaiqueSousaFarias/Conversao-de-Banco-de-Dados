## Manual de Exportação de Bancos de Dados no SQL Server

![](/images/SQL_SERVER/sqlServer_logo_bg.png)

## Sumário
- [Exportação Usando Arquivos .bak](#exportação-usando-arquivos-bak)
- [Exportação Usando Arquivos .mdf](#exportação-usando-arquivos-mdf)

### Exportação Usando Arquivos .bak

Este manual descreve o processo para exportar um banco de dados no SQL Server criando um arquivo de backup (.bak).

### Passo a Passo para Exportação com Arquivo .bak

1. **Abra o SQL Server Management Studio (SSMS).**
2. **Conecte-se à instância do SQL Server** onde o banco de dados que deseja exportar está localizado.
3. **No Object Explorer** (Pesquisador de Objetos), expanda a pasta **Databases** (Banco de Dados) e localize o banco de dados que você quer exportar.
4. **Clique com o botão direito** no banco de dados escolhido e selecione **Tasks** (Tarefas) > **Back Up…** (Fazer Backup...)

![](/images/SQL_SERVER/Exportação/1.png)

5. Na janela **Back Up Database** (Backup de Banco de Dados):
   - **Backup type** (Tipo de Backup): Escolha **Full** (Completo) para criar um backup completo do banco de dados.
   - Em **Destination** (Destino), clique em **Add** (Adicionar) para escolher onde salvar o arquivo .bak.
   - Navegue até o local desejado, insira o nome do arquivo .bak e clique em **OK**.

   ![](/images/SQL_SERVER/Exportação/2.png)

6. **Clique em OK** novamente para iniciar o processo de backup.

   ![](/images/SQL_SERVER/Exportação/3.png)

O SQL Server criará o arquivo .bak no local especificado, contendo o backup completo do banco de dados.

   #### Normalmente nesse caminho:

      C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup

### Exportação Usando Arquivos .mdf

Este manual descreve o processo para exportar um banco de dados no SQL Server desanexando-o, o que gera um arquivo .mdf.

### Passo a Passo para Exportação com Arquivo .mdf

1. **Abra o SQL Server Management Studio (SSMS).**
2. **Conecte-se à instância do SQL Server** onde o banco de dados que deseja exportar está localizado.
3. **No Object Explorer** (Pesquisador de Objetos), expanda a pasta **Databases** (Banco de Dados) e localize o banco de dados que você quer exportar.
4. **Clique com o botão direito** no banco de dados escolhido e selecione **Tasks** (Tarefas) > **Detach…** (Desanexar...)

![](/images/SQL_SERVER/Exportação/11.png)

5. Na janela **Detach Database** (Desanexar Banco de Dados):
   - Verifique se o banco de dados correto está marcado.
   - Marque a opção **Drop Connections** (Descartar Conexões) se desejar desconectar todas as conexões ativas antes de desanexar.

   ![](/images/SQL_SERVER/Exportação/22.png)

6. **Clique em OK** para desanexar o banco de dados.

O banco de dados será desanexado, e você poderá acessar o arquivo .mdf (e o arquivo .ldf, que é o log do banco de dados) no diretório de armazenamento.

   #### Normalmente nesse caminho:

      C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA

---

* [Voltar para a Documentação](/README.md)