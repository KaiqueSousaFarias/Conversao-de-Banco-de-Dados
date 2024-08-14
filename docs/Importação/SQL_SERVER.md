## Manual de Importação de Bancos de Dados no SQL Server

![](/images/SQL_SERVER/sqlServer_logo_bg.png)

## Sumário
- [Importação Usando Arquivos .bak](#importação-usando-arquivos-bak)
- [Importação Usando Arquivos .mdf](#importação-usando-arquivos-mdf)

### Importação Usando Arquivos .bak

Este manual descreve o processo para importar um banco de dados no SQL Server utilizando um arquivo de backup (.bak).

#### **Recomendação**:
- Antes de prosseguir, recomendo que coloque o arquivo .bak na seguinte pasta (Ou similar):
        
        C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\

### Passo a Passo para Importação com Arquivo .bak

1. **Abra o SQL Server Management Studio (SSMS).**
2. **Conecte-se à instância do SQL Server** onde deseja restaurar o banco de dados.
3. **No Object Explorer** (Pesquisador de Objetos), clique com o botão direito em **Databases** (Banco de Dados) e selecione **Restore Database…** (Restaurar Banco de Dados...)

![](/images/SQL_SERVER/Importação/1.png)

4. Na janela **Restore Database** (Restaurar Banco de Dados...):
   - Em **Source** (Origem), selecione **Device** (Dispositivo) e clique em **...** para localizar o arquivo .bak.

    ![](/images/SQL_SERVER/Importação/2.png)

   - Clique em **Add** (Adicionar) e navegue até o arquivo .bak que você deseja restaurar.
   ##### Note que caso você tenha seguido o [passo anterior](#recomendação) o banco de dados já será listado como na imagem.

   ![](/images/SQL_SERVER/Importação/3.png)


   - Selecione o arquivo e clique em **OK**.
5. Em **Destination** (Destino), o nome do banco de dados restaurado será preenchido automaticamente. Você pode alterá-lo se desejar.

   ![](/images/SQL_SERVER/Importação/4.png)

6. Clique em **OK** para iniciar a restauração.

   ![](/images/SQL_SERVER/Importação/5.png)

O SQL Server restaurará o banco de dados a partir do arquivo .bak e ele ficará disponível na lista de bancos de dados.

---

### Importação Usando Arquivos .mdf

Este manual descreve o processo para importar um banco de dados no SQL Server anexando um arquivo .mdf.

#### **Recomendação**:
- Antes de prosseguir, recomendo que coloque o arquivo .mdf e .ldf na seguinte pasta (Ou similar):
        
        C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA

### Passo a Passo para Importação com Arquivo .mdf

1. **Abra o SQL Server Management Studio (SSMS).**
2. **Conecte-se à instância do SQL Server** onde deseja anexar o banco de dados.
3. **No Object Explorer** (Pesquisador de Objetos), clique com o botão direito em **Databases** (Banco de Dados) e selecione **Attach…** (Anexar...)
       ![](/images/SQL_SERVER/Importação/11.png)
4. Na janela **Attach Databases** (Anexar Banco de Dados):
   - Clique em **Add** (Adicionar) para localizar o arquivo .mdf.
   ![](/images/SQL_SERVER/Importação/22.png)

      ##### Note que caso você tenha seguido o [passo anterior](#recomendação-1) o banco de dados já será listado como na imagem.
        ![](/images/SQL_SERVER/Importação/33.png)
      

   - Navegue até o local onde o arquivo .mdf está armazenado, selecione-o e clique em **OK**.
5. O SQL Server buscará automaticamente o arquivo .ldf correspondente. Se o arquivo .ldf não for encontrado, ele será recriado.

![](/images/SQL_SERVER/Importação/44.png)

6. Clique em **OK** para anexar o banco de dados.

O SQL Server anexará o banco de dados e ele aparecerá na lista de bancos de dados, pronto para uso.

![](/images/SQL_SERVER/Importação/55.png)