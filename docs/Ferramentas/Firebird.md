
# Documentação de Instalação do Firebird (Versões 1.5, 2.0, 2.1, 2.5, 3.0 e 4.0)

## Introdução

O Firebird é um sistema de gerenciamento de banco de dados relacional que é amplamente utilizado por desenvolvedores e empresas. Este guia abrange a instalação das versões 1.5, 2.0, 2.1, 2.5, 3.0 e 4.0 do Firebird, detalhando o processo para diferentes versões do Windows e Linux.

## Pré-requisitos

Antes de começar a instalação, verifique os seguintes pré-requisitos:

1. **Sistema Operacional**:
   - Windows: XP, Vista, 7, 8, 10, Server 2003 e superiores.

2. **Permissões de Administrador**: Necessárias para instalar e configurar os serviços.

## Download dos Pacotes de Instalação

Acesse o site oficial do Firebird para baixar as versões desejadas:

- [Firebird 1.5](https://firebirdsql.org/en/firebird-1-5/)
- [Firebird 2.0](https://firebirdsql.org/en/firebird-2-0/)
- [Firebird 2.1](https://firebirdsql.org/en/firebird-2-1/)
- [Firebird 2.5](https://firebirdsql.org/en/firebird-2-5/)
- [Firebird 3.0](https://firebirdsql.org/en/firebird-3-0/)
- [Firebird 4.0](https://firebirdsql.org/en/firebird-4-0/)
* DropBox HERA SISTEMAS: [Todas as Versões](https://www.dropbox.com/scl/fo/flizdd7lt528wi7b525l4/ANW7jRDl-PK6oSFhX8eNKc4?rlkey=calfhtqs17in9pr8867b6x2mn&dl=0)

Escolha o instalador adequado ao seu sistema operacional (32-bit ou 64-bit) e baixe o arquivo correspondente.

Para configurar serviços independentes para cada versão do Firebird, você precisará instalar cada versão em diretórios separados e configurar cada serviço para ser executado de forma independente. Aqui está um passo a passo para conseguir isso:

### 1. **Instalação de Múltiplas Versões**

- Instale cada versão do Firebird em um diretório diferente. Por exemplo:
  - Firebird 1.5 em `C:\Firebird\Firebird_1_5\`
  - Firebird 2.0 em `C:\Firebird\Firebird_2_0\`
  - E assim por diante.

Durante a instalação, certifique-se de desmarcar a opção que registra o Firebird como um serviço, pois vamos configurá-los manualmente.

![](/images/Firebird/1.png)
![](/images/Firebird/2.png)

### 2. **Configuração dos Serviços**


1. **Criando o Serviço:**

   Abra o Prompt de Comando como administrador e execute os seguintes comandos, ajustando conforme necessário:

   ```bash
   sc create Firebird1_5 binPath= "\"C:\Firebird\Firebird_1_5\bin\fbserver.exe\" -s" DisplayName= "Firebird 1.5" start= auto
   sc create Firebird2_0 binPath= "\"C:\Firebird\Firebird_2_0\bin\fbserver.exe\" -s" DisplayName= "Firebird 2.0" start= auto
   sc create Firebird2_1 binPath= "\"C:\Firebird\Firebird_2_1\bin\fbserver.exe\" -s" DisplayName= "Firebird 2.1" start= auto
   sc create Firebird2_5 binPath= "\"C:\Firebird\Firebird_2_5\bin\fbserver.exe\" -s" DisplayName= "Firebird 2.5" start= auto
   sc create Firebird3_0 binPath= "\"C:\Firebird\Firebird_3_0\firebird.exe\" -s" DisplayName= "Firebird 3.0" start= auto
   sc create Firebird4_0 binPath= "\"C:\Firebird\Firebird_4_0\firebird.exe\" -s" DisplayName= "Firebird 4.0" start= auto
   ```

   - `binPath`: Especifica o caminho completo para o executável do Firebird para a versão específica.
   - `DisplayName`: Nome amigável que aparecerá na lista de serviços do Windows.
   - `start`: Define se o serviço deve ser iniciado automaticamente (`auto`) ou manualmente (`demand`).

   ![](/images/Firebird/3.png)

2. **Configurando as Portas:**

   Cada serviço deve ser configurado para usar uma porta diferente. Edite o arquivo `firebird.conf` para cada versão e defina uma porta exclusiva:

   - Para Firebird 1.5:
     ```ini
     RemoteServicePort = 3015
     RemoteServiceName = firebird_1.5
     ```
   - Para Firebird 2.0:
     ```ini
     RemoteServicePort = 3020
     RemoteServiceName = firebird_2.0
     ```
   - E assim por diante para as outras versões.

   Certifique-se de que essas portas não estejam sendo usadas por outro serviço.

3. **Iniciando os Serviços:**

   Após configurar os serviços, você pode iniciá-los com:

   ```bash
   net start Firebird1_5
   net start Firebird2_0
   net start Firebird2_1
   net start Firebird2_5
   net start Firebird3_0
   net start Firebird4_0
   ```


### 3. **Verificação e Testes**

Verifique se cada serviço está ativo e rodando corretamente:
A mensagem "Connection refused: connect" geralmente indica que o cliente (neste caso, o DBeaver) não conseguiu se conectar ao servidor do Firebird. Esse problema pode ter várias causas. Aqui estão algumas etapas de diagnóstico e solução de problemas para ajudá-lo a resolver a questão:

1. **Verifique se os Serviços Estão Rodando**

Certifique-se de que os serviços do Firebird foram criados e iniciados corretamente. No Prompt de Comando, você pode verificar o status dos serviços com:

```bash
sc query Firebird1_5
sc query Firebird2_0
sc query Firebird2_1
sc query Firebird2_5
sc query Firebird3_0
sc query Firebird4_0
```

Verifique se todos os serviços estão com o status `RUNNING`.

2. **Verifique as Configurações de Porta**

Certifique-se de que as portas configuradas no `firebird.conf` estão corretas e não estão sendo usadas por outros serviços. Além disso, verifique se você especificou a porta correta no DBeaver. As portas devem ser únicas para cada versão, como no exemplo abaixo:

- Firebird 1.5: 3015
- Firebird 2.0: 3020
- Firebird 2.1: 3021
- Firebird 2.5: 3025
- Firebird 3.0: 3030
- Firebird 4.0: 3040

3. **Firewall e Configurações de Rede**

Verifique se o firewall do Windows está permitindo o tráfego nas portas usadas pelo Firebird. Você pode adicionar uma regra para permitir o tráfego nas portas especificadas:

- **Abrir o Painel de Controle do Windows**.
- **Ir para Sistema e Segurança > Firewall do Windows > Configurações Avançadas**.
- **Adicionar uma nova regra de entrada para cada porta usada pelo Firebird**.

4. **Verifique o Arquivo `firebird.conf`**

Certifique-se de que as configurações do arquivo `firebird.conf` estão corretas. Verifique se a linha para `RemoteServicePort` está configurada corretamente e se outras configurações relacionadas à rede (como `RemoteBindAddress`) estão definidas conforme necessário.

5. **Verifique a Conexão com o Servidor**

Verifique se você consegue se conectar ao Firebird usando a ferramenta `isql` (incluída na instalação do Firebird). No Prompt de Comando, execute:

```bash
"C:\Firebird\Firebird_1_5\bin\isql.exe" -user SYSDBA -password masterkey
"C:\Firebird\Firebird_2_0\bin\isql.exe" -user SYSDBA -password masterkey
"C:\Firebird\Firebird_2_1\bin\isql.exe" -user SYSDBA -password masterkey
"C:\Firebird\Firebird_2_5\bin\isql.exe" -user SYSDBA -password masterkey
"C:\Firebird\Firebird_3_0\isql.exe" -user SYSDBA -password masterkey
"C:\Firebird\Firebird_4_0\isql.exe" -user SYSDBA -password masterkey
```

Substitua o caminho e as credenciais conforme necessário. Se você não conseguir se conectar via `isql`, há um problema com o servidor Firebird ou sua configuração.

6. **Verifique o DBeaver**

No DBeaver, verifique as configurações da conexão:

1. **Abra o DBeaver**.
2. **Vá para "Database" > "New Database Connection"**.
3. **Selecione Firebird**.
4. **Configure a conexão**:
   - **Host**: O endereço do servidor (por exemplo, `localhost` se estiver no mesmo computador).
   - **Port**: A porta configurada (por exemplo, `3025` para Firebird 2.5).
   - **Database**: Nome do banco de dados.
   - **User**: Usuário (normalmente `SYSDBA`).
   - **Password**: Senha (normalmente `masterkey`).

7. **Reinicie os Serviços**

Às vezes, reiniciar os serviços pode resolver problemas de conexão. Tente reiniciar os serviços do Firebird e, se necessário, reinicie o computador.

```bash
net stop Firebird1_5
net stop Firebird2_0
net stop Firebird2_1
net stop Firebird2_5
net stop Firebird3_0
net stop Firebird4_0

net start Firebird1_5
net start Firebird2_0
net start Firebird2_1
net start Firebird2_5
net start Firebird3_0
net start Firebird4_0
```

Se, após essas verificações, você ainda não conseguir conectar, pode ser útil consultar os logs do Firebird para mensagens de erro que possam fornecer mais informações sobre o problema.

### 4. **Erros**

Caso ocorra o erro abaixo quando for realizar a instalação, renomeie o nome do executável Firebird que você está utilizando.

![](/images/Firebird/10.png)

### Considerações Finais

Este processo garante que cada versão do Firebird seja executada de forma independente e que você possa gerenciá-las separadamente, facilitando o desenvolvimento, testes e migrações entre versões diferentes do Firebird.