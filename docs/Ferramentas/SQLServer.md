# Documentação de Instalação Básica do SQL Server Express

![](/images/SQL_SERVER/microsoft_logo_bg.png)

Este guia fornece um passo a passo simples e rápido para a instalação básica do Microsoft SQL Server Express em uma máquina com o sistema operacional Windows. Este método é ideal para usuários que desejam configurar o SQL Server Express com as configurações padrão e com o mínimo de intervenção manual.

## 1. Requisitos do Sistema

### 1.1. Sistema Operacional Suportado
- Windows 10 (x64)
- Windows 8.1 (x64)
- Windows Server 2019
- Windows Server 2016
- Windows Server 2012 R2

### 1.2. Requisitos de Hardware
- **Processador:** x64, mínimo 1.4 GHz (2.0 GHz ou mais recomendado)
- **Memória:** Mínimo 512 MB (1 GB ou mais recomendado)
- **Espaço em Disco:** Mínimo 6 GB para a instalação básica
- **Sistema de Arquivos:** NTFS

### 1.3. Software Adicional
- .NET Framework 4.6.2 ou superior
- Windows PowerShell 5.0 ou superior

## 2. Download do SQL Server Express

1. Acesse a [página oficial de downloads do Microsoft SQL Server Express](https://www.microsoft.com/pt-br/sql-server/sql-server-editions-express).
2. Selecione a edição **SQL Server 2022 Express** (ou a versão mais recente disponível).
3. Baixe o arquivo executável [`SQLServerExpress.exe`](https://www.dropbox.com/scl/fi/g8r58telrlhz3y9bbgupb/SQL2022-SSEI-Expr.exe?rlkey=uckkpqvmyu2wsqpy0w8bcxq6b&dl=0).

## 3. Preparação para a Instalação

1. **Desative o antivírus temporariamente** para evitar conflitos durante a instalação.
2. **Atualize o Windows** e reinicie o sistema se necessário.
3. Certifique-se de que você tem **privilégios administrativos** na máquina onde o SQL Server será instalado.

## 4. Passo a Passo da Instalação Básica

### 4.1. Executar o Instalador

1. Localize o arquivo baixado `SQLServerExpress.exe` e execute-o.
2. Na tela inicial, selecione a opção **Basic Installation** (Instalação Básica).

![](/images/SQL_SERVER/1.png)

### 4.2. Aceitar os Termos de Licença

1. Leia e aceite os termos de licença do SQL Server.
2. Clique em **Accept** (Aceitar) para prosseguir.

![](/images/SQL_SERVER/2.png)

### 4.3. Escolher o Local de Instalação

1. O instalador exibirá o caminho padrão onde o SQL Server será instalado. Você pode alterá-lo se necessário, mas o caminho padrão geralmente é o suficiente.
2. Clique em **Install** (Instalar) para iniciar a instalação.

![](/images/SQL_SERVER/3.png)

### 4.4. Progresso da Instalação

1. O instalador começará a baixar os arquivos necessários e, em seguida, iniciará o processo de instalação.
2. Esse processo pode levar alguns minutos. Aguarde até que a instalação seja concluída.

### 4.5. Instalação Concluída

1. Após a instalação, você verá uma mensagem confirmando que o SQL Server Express foi instalado com sucesso.
2. A tela exibirá o nome da instância (`SQLEXPRESS`) e outras informações úteis como a porta usada.
3. Você pode clicar em **Install SSMS** para ir diretamente à instalação do [SQL Server Management Studio](https://www.dropbox.com/s/tnfmvwdt4cfrbqu/SSMS-Setup-PTB.exe?dl=0) (SSMS) ou em **Close** (Fechar) para fechar o instalador.

![](/images/SQL_SERVER/4.png)

## 5. Instalação do SQL Server Management Studio (SSMS)

O SQL Server Management Studio (SSMS) é a interface gráfica usada para gerenciar instâncias do SQL Server.

1. Se você clicou em **Install SSMS** (Instalar SSMS) na etapa anterior, o instalador do SSMS será aberto automaticamente. Caso contrário, acesse a [página de download do SSMS](https://docs.microsoft.com/pt-br/sql/ssms/download-sql-server-management-studio-ssms).
2. Baixe e execute o instalador do SSMS.
3. Siga as instruções na tela para completar a instalação.

![](/images/SQL_SERVER/5.png)
![](/images/SQL_SERVER/6.png)

## 6. Teste de Conexão e Configuração Inicial

1. Após a instalação do SSMS, abra o aplicativo.
2. No campo de conexão, selecione o **nome da instância** que foi configurado automaticamente (`SQLEXPRESS`).
3. Escolha o tipo de autenticação:
   - **Autenticação do Windows:** Usará as credenciais do Windows para se conectar ao SQL Server.
4. Escolha o tipo de Criptografia:
    - **Opcional**
5. Clique em **Connect** (Conectar).
6. Após se conectar, você pode começar a criar bancos de dados, tabelas e executar scripts SQL.


![](/images/SQL_SERVER/7.png)


## 7. Configurações Adicionais

### 7.1. Configuração do Firewall (Opcional)

1. Abra o **Painel de Controle** > **Sistema e Segurança** > **Firewall do Windows**.
2. Clique em **Permitir um aplicativo ou recurso pelo Firewall do Windows**.
3. Verifique se o SQL Server está listado e permitido.
4. Se necessário, adicione regras de entrada e saída para a porta 1433 (a porta padrão usada pelo SQL Server).

### 7.2. Backup e Manutenção (Opcional)

1. Para proteger seus dados, é recomendado configurar rotinas de backup regulares.
2. Embora o SQL Server Agent não esteja disponível no Express, você pode criar scripts personalizados para tarefas de manutenção.

## 8. Limitações do SQL Server Express

- **Tamanho Máximo de Banco de Dados:** 10 GB por banco de dados.
- **Uso de CPU:** Suporta no máximo 4 núcleos.
- **Memória RAM:** Limite de 1 GB de memória utilizável pelo SQL Server.

Essas limitações tornam o SQL Server Express adequado para pequenas aplicações ou ambientes de desenvolvimento/teste.

## 9. Conclusão

Agora que o SQL Server Express está instalado, você pode utilizá-lo para desenvolver e gerenciar pequenas aplicações de banco de dados. Para projetos maiores, considere a possibilidade de migrar para uma edição paga do SQL Server que suporte um volume maior de dados e usuários.

---

Este guia cobre o básico para a instalação do SQL Server Express no Windows. Para configurações mais avançadas ou instruções sobre outras plataformas, consulte a [documentação oficial do SQL Server](https://docs.microsoft.com/pt-br/sql/sql-server/).


---

* [Voltar para a Documentação](/README.md)
