### Documentação para Uso do `bsondump`

O `bsondump` é uma ferramenta de linha de comando fornecida pelo MongoDB para converter arquivos BSON (Binary JSON) em formatos legíveis, como JSON ou JSON simples. Ele é especialmente útil para inspecionar arquivos de banco de dados que foram exportados em formato BSON.

#### Pré-requisitos

Antes de começar a usar o `bsondump`, certifique-se de que:

- Você tem o MongoDB instalado em seu sistema. O `bsondump` é parte do pacote de ferramentas do MongoDB.
- Os arquivos BSON que deseja converter estão acessíveis no seu sistema.

#### Instalação

Caso o MongoDB ainda não esteja instalado, siga as instruções abaixo para instalar:
   
- **Windows**:
   Baixe o MongoDB Database Tools do site oficial: [MongoDB Tools Download](https://www.mongodb.com/try/download/database-tools).

   - Caso queira somente o `bsondump` [clique aqui](https://www.dropbox.com/scl/fi/3d4ts489gpx5j342418bt/bsondump.exe?rlkey=1fpv3ej75rstw1o3d9e3rdelr&dl=0).

#### Usando o `bsondump`

O `bsondump` pode ser usado diretamente a partir da linha de comando para converter arquivos BSON em JSON legível.

##### Sintaxe Básica

```bash
bsondump [opções] <input.bson>
```

##### Exemplos de Uso

1. **Converter um arquivo BSON para JSON legível no terminal:**

   ```bash
   bsondump input.bson
   ```

   Este comando imprime a versão JSON do arquivo BSON diretamente no terminal.

2. **Converter e salvar a saída em um arquivo JSON:**

   ```bash
   bsondump --outFile=output.json input.bson
   ```

   Este comando converte o arquivo BSON e salva a saída em `output.json`.

3. **Exibir o JSON em formato estruturado:**

   ```bash
   bsondump --pretty input.bson
   ```

   O uso da opção `--pretty` formata a saída JSON de maneira mais legível, com identação.

4. **Converter um arquivo BSON compactado:**

   ```bash
   bsondump --gzip input.bson.gz
   ```

   Se o arquivo BSON estiver compactado com `gzip`, use a opção `--gzip`.

#### Opções Disponíveis

- `--help`: Exibe a ajuda com todas as opções disponíveis.
- `--outFile=<arquivo>`: Especifica o arquivo de saída onde o JSON gerado será salvo.
- `--pretty`: Formata o JSON de saída de forma legível, com identação.
- `--version`: Exibe a versão da ferramenta `bsondump`.
- `--gzip`: Informa ao `bsondump` que o arquivo de entrada está compactado com `gzip`.

#### Casos de Uso

1. **Depuração**: Verifique rapidamente o conteúdo de um arquivo BSON, especialmente útil para arquivos exportados de bancos de dados MongoDB.
  
2. **Conversão para análise**: Converta arquivos BSON em JSON para análise em outras ferramentas que não suportam BSON nativamente.

3. **Migração de Dados**: Durante processos de migração, pode ser necessário converter BSON em JSON para manipulação em outros sistemas.

#### Dicas e Considerações

- O `bsondump` é uma ferramenta de inspeção rápida. Para manipulação de dados em massa ou operações complexas, considere usar outras ferramentas, como `mongoexport`.
- Sempre verifique se o JSON gerado mantém a integridade dos dados esperados, especialmente se o arquivo BSON contém objetos complexos.

### Passo a Passo para Conversão de Arquivos BSON para JSON

Este guia descreve o processo para converter arquivos BSON para JSON utilizando a ferramenta `bsondump`. O exemplo a seguir utiliza dados da Digisat.

#### 1. Preparação do Ambiente

Primeiramente, organize os arquivos BSON que você deseja converter em uma pasta específica. Certifique-se de que o executável `bsondump.exe` esteja presente nessa mesma pasta. Neste exemplo, vamos considerar que todos os arquivos estão localizados na pasta `C:\Digisat`.

**Exemplo do Caminho:**

```text
C:\Digisat
```

![Exemplo de organização de arquivos](/images/BSON_TO_JSON/1.png)

#### 2. Execução dos Comandos de Conversão

Abra o Prompt de Comando (CMD) e navegue até a pasta onde estão os arquivos BSON e o `bsondump.exe`. Você pode fazer isso digitando o comando a seguir no CMD:

```bash
cd C:\Digisat
```

Uma vez na pasta correta, execute os comandos de conversão para cada arquivo BSON que você deseja transformar em JSON. Utilize o seguinte formato de comando:

```bash
bsondump --outFile NomeDoArquivo.json NomeDoArquivo.bson
```

Abaixo está um exemplo com vários arquivos:

```bash
bsondump --outFile ProdutosServicosEmpresa.json ProdutosServicosEmpresa.bson
bsondump --outFile Estoques.json Estoques.bson
bsondump --outFile Pessoas.json Pessoas.bson
bsondump --outFile Precos.json Precos.bson
bsondump --outFile ProdutosServicos.json ProdutosServicos.bson
```

![Exemplo de comandos no CMD](/images/BSON_TO_JSON/2.png)

#### 3. Verificação dos Arquivos Convertidos

Após a execução dos comandos, verifique a pasta `C:\Digisat` para confirmar que os arquivos JSON foram gerados corretamente. Os arquivos JSON terão o mesmo nome dos arquivos BSON originais, mas com a extensão `.json`.

![Verificação dos arquivos gerados](/images/BSON_TO_JSON/3.png)

Esse processo é essencial para garantir que os dados possam ser manipulados em formato JSON, amplamente utilizado para diversas finalidades em desenvolvimento e análise de dados.

### Conclusão

O `bsondump` é uma ferramenta simples, mas poderosa, para converter e inspecionar arquivos BSON. É ideal para casos onde a visualização ou conversão de BSON em JSON é necessária rapidamente. Com as instruções fornecidas, você deve ser capaz de utilizar essa ferramenta de maneira eficaz em seus fluxos de trabalho.

Se precisar de mais detalhes ou tiver dúvidas específicas, consulte a documentação oficial do MongoDB ou use a opção `--help` para mais informações sobre o `bsondump`.