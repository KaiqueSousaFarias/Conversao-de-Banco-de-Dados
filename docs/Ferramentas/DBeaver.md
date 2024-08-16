## Manual de Uso do DBeaver
![Dbeaver](/images/Tutorial-DBeaver/dbeaver_logo_bg.png)
### 1. **Instalação do DBeaver**

1. **Baixar o DBeaver:**
   - Acesse o site oficial do DBeaver: [DBeaver Downloads](https://dbeaver.io/download/).
   - Escolha a versão adequada para o seu sistema operacional (Windows, macOS, Linux).
   - Clique no link de download para iniciar o download do instalador.

   ![](/images/Tutorial-DBeaver/1.png)

2. **Instalar o DBeaver:**
   - **Windows:** Execute o arquivo `.exe` baixado e siga o assistente de instalação. 
   - **macOS:** Abra o arquivo `.dmg` e arraste o DBeaver para a pasta "Aplicativos".
   - **Linux:** Siga as instruções específicas fornecidas para sua distribuição (por exemplo, usando um arquivo `.deb` para distribuições baseadas em Debian ou um arquivo `.rpm` para distribuições baseadas em Red Hat).
   
3. **Abrir o DBeaver:**
   - Após a instalação, abra o DBeaver a partir do menu de aplicativos ou da área de trabalho.

### 2. **Conectando-se a um Banco de Dados**

1. **Criar uma Nova Conexão:**
   - Abra o DBeaver.
   - No menu principal, clique em **"Database"** e depois em **"New Database Connection"**.

   ![](/images/Tutorial-DBeaver/2.png)

2. **Selecionar o Tipo de Banco de Dados:**
   - Na janela **"Connect to a database"**, escolha o tipo de banco de dados que você deseja conectar (por exemplo, MySQL, PostgreSQL, SQLite).
   - Clique em **"Next"**.

   ![](/images/Tutorial-DBeaver/3.png)
   

3. **Configurar a Conexão:**
   - Preencha as informações necessárias, como **Host**, **Porta**, **Database**, **Usuário** e **Senha**.
   - Clique em **"Test Connection"** para verificar se os detalhes estão corretos e se a conexão pode ser estabelecida.
   - Se o teste for bem-sucedido, clique em **"Finish"** para salvar a conexão.

   ![](/images/Tutorial-DBeaver/4.png)

### 3. **Navegando na Interface**

1. **Explorar o Banco de Dados:**
   - No painel **"Database Navigator"**, você verá uma lista de suas conexões e seus bancos de dados.
   - Expanda a conexão para visualizar esquemas, tabelas, e outros objetos do banco de dados.

   ![](/images/Tutorial-DBeaver/5.png)

2. **Executar Consultas SQL:**
   - Clique com o botão direito em uma conexão ou tabela e selecione **"SQL Editor"**.
   - Digite sua consulta SQL no editor e clique em **"Execute SQL Statement"** (ícone de play) ou pressione **Ctrl+Enter** para executar a consulta.

   ![](/images/Tutorial-DBeaver/6.png)

3. **Visualizar Resultados:**
   - Os resultados da consulta serão exibidos na aba **"Results"** abaixo do editor SQL.
   - Você pode visualizar e manipular os dados diretamente nesta aba.

   ![](/images/Tutorial-DBeaver/7.png)

### 4. **Gerenciando Objetos do Banco de Dados**

1. **Criar/Editar Tabelas:**
   - Clique com o botão direito em uma tabela e selecione **"Edit Table"** para abrir a janela de edição.
   - Aqui, você pode modificar a estrutura da tabela, adicionar colunas e definir restrições.

2. **Importar/Exportar Dados:**
   - Para importar dados, clique com o botão direito na tabela de destino e selecione **"Import Data"**.
   - Para exportar dados, clique com o botão direito na tabela e selecione **"Export Data"**.

### 5. **Utilizando Recursos Avançados**

1. **Gerar Diagramas de Banco de Dados:**
   - Clique com o botão direito em um banco de dados ou esquema e selecione **"ER Diagram"** para gerar um diagrama entidade-relacionamento.

2. **Executar Scripts e Procedimentos Armazenados:**
   - No editor SQL, você pode executar scripts complexos e procedimentos armazenados. Basta escrevê-los no editor e executá-los como faria com qualquer outra consulta SQL.

### 6. **Configurações e Personalização**

1. **Configurar Preferências:**
   - No menu principal, vá em **"Window"** > **"Preferences"** para acessar as configurações do DBeaver.
   - Aqui, você pode ajustar opções relacionadas ao editor SQL, aparência, e outras preferências da ferramenta.

2. **Instalar Extensões:**
   - DBeaver oferece uma variedade de extensões e plugins. Para instalar novos plugins, vá em **"Help"** > **"Eclipse Marketplace"** e busque as extensões desejadas.

### 7. **Fechamento e Backup**

1. **Fechar Conexões:**
   - Para fechar uma conexão, clique com o botão direito na conexão no painel **"Database Navigator"** e selecione **"Disconnect"**.

2. **Backup das Configurações:**
   - Para garantir que suas configurações e preferências sejam preservadas, você pode exportar as configurações do DBeaver através de **"File"** > **"Export"** > **"General"** > **"Preferences"**.

---

* [Voltar para a Documentação Principal](/README.md)