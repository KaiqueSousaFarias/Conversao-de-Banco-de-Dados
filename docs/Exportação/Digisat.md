### Documentação para Exportação do Banco de Dados do Sistema DigiSat

Esta documentação tem como objetivo guiar o processo de exportação do banco de dados do sistema DigiSat, que utiliza MongoDB como sistema de gerenciamento de banco de dados. A exportação ocorre a partir de arquivos que estão zipados na pasta específica do sistema.

#### Pré-requisitos

Antes de iniciar o processo de exportação, certifique-se de que os seguintes pré-requisitos foram atendidos:

1. **Acesso ao Servidor**: É necessário ter acesso ao servidor onde o sistema DigiSat está instalado.
2. **Permissões de Administrador**: Certifique-se de que você possui permissões de administrador para acessar e manipular arquivos no servidor.
3. **Ferramentas de Extração**: Tenha uma ferramenta de descompactação de arquivos ZIP instalada (como WinRAR, 7-Zip, ou similar).
4. **Instalação do MongoDB**: A máquina onde o processo de conversão será realizado deve ter o MongoDB instalado para que seja possível realizar a importação dos arquivos BSON e JSON.

#### Passo a Passo para Exportação

##### 1. Localize o Arquivo ZIP de Backup

O backup do banco de dados MongoDB está localizado na pasta:

```
C:\DigiSat\SuiteG6\Sistema\Backup\SERVIDOR\Dados
```

Nesta pasta, você encontrará arquivos compactados contendo os backups do banco de dados.

##### 2. Descompacte o Arquivo Compactado

1. **Navegue até a pasta especificada** acima utilizando o Explorador de Arquivos do Windows.
2. **Selecione o arquivo** que deseja exportar.
3. **Clique com o botão direito** no arquivo e selecione "Extrair Aqui" ou use o software de descompressão de sua preferência para extrair o conteúdo do arquivo.

Após a extração, você verá arquivos com extensões `.bson` e `.json`, que são os formatos utilizados para os dados e metadados do MongoDB.