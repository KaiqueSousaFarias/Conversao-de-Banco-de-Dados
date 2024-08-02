<br />
<div align="center">
  <a href="https://www.herasistemas.com/" target="_blank">
    <img src="images/conversao.png" alt="Conversao" width="auto" height="auto">
  </a>

  <h3 align="center">Conversão de Banco de Dados</h3>

  <p align="center">
    Este documento fornece um guia passo a passo para a conversão de um banco de dados Excel para os sistemas utilizados pelo Gestão Fácil.
    <br />
    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank"><strong>Explore a Documentação »</strong></a>
    <br />
    <br />
    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">Ver Demonstração</a>
    ·
    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">Relatar Problema</a>
    ·
    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">Solicitar Funcionalidade</a>
  </p>
</div>

## Sumário
- [Sobre o Projeto](#sobre-o-projeto)
  - [Importante](#importante)
  - [Manuais para Revenda](#manuais-para-revenda)
- [Documentação de Conversão de Banco de Dados](#documentação-de-conversão-de-banco-de-dados)
  - [Preparação do Ambiente](#1-preparação-do-ambiente)
    - [Planilha de Dados do Revendedor](#11-planilha-de-dados-do-revendedor)
    - [Organização de Pastas](#12-organização-de-pastas)
    - [Instalação de Ferramentas](#13-instalação-de-ferramentas)
  - [Atendimento ao Revendedor](#2-atendimento-ao-revendedor)
    - [Recepção e Coleta de Informações](#21-recepção-e-coleta-de-informações)
    - [Coleta de Dados Necessários](#22-coleta-de-dados-necessários)
  - [Verificação e Conversão de Dados](#3-verificação-e-conversão-de-dados)
    - [Localização do Banco de Dados](#31-localização-do-banco-de-dados)
    - [Análise do Banco de Dados](#32-análise-do-banco-de-dados)
    - [Armazenamento e Conversão](#33-armazenamento-e-conversão)
  - [Finalização](#4-finalização)
- [Tipos de Banco](#tipos-de-banco)
  - [Importação CSV](../Conversao-Banco-Dados-HERA/Conversao/CSV.md)
  - [Importação TEXTO](../Conversao-Banco-Dados-HERA/Conversao/TEXTO.md)
- [Execute os seguintes comandos](#execute-os-seguintes-comandos)
- [Verificações e Testes](CSV.md)
- [License](#license)
- [Contato](#contato)

## Sobre o Projeto

<div align="center">
<img src="images/hera.png" alt="Logo HERA Sistemas" width="auto" height="60rem">
<img src="images/GestaoFacil.png" alt="Logo Gestão Fácil" width="auto" height="60rem">
<img src="images/pdv.png" alt="Logo Ponto de Venda" width="auto" height="60rem">
</div>
<br>
<p>
O nosso projeto foi desenvolvido com o objetivo principal de simplificar e otimizar o processo de conversão de bancos de dados. Reconhecemos a complexidade e o tempo envolvidos na integração e migração de informações entre diferentes sistemas e plataformas, e, por isso, criamos uma solução que automatiza e agiliza esse processo.
</p>
<p>
Para garantir que você possa aproveitar ao máximo nossa ferramenta, oferecemos um guia passo a passo detalhado. Esse guia é projetado para orientar você através de cada etapa da conversão, desde a configuração inicial até a finalização, garantindo que o processo seja o mais fluido e eficiente possível.
</p>
<p>
Com nossa solução, você poderá realizar migrações de dados com precisão e segurança, minimizando erros e reduzindo o esforço manual. Estamos comprometidos em fornecer uma ferramenta poderosa e um suporte completo para facilitar a modernização da sua infraestrutura de dados.
</p>

### Importante
* Siga todo o passo a passo.
* Leia os comentários.
* Entenda o que está sendo feito.
* Teste.

### Manuais para Revenda
* [Download Documento de Conversão de Banco de Dados](https://www.dropbox.com/scl/fi/9d7oba1hjj5dmtp024caw/Convers-o-de-Banco-de-Dados.pdf?rlkey=5za478hgzcwecemxti9h754mn&dl=0)
* [Download Resumo do Documento de Conversão de Banco de Dados](https://www.dropbox.com/scl/fi/bwvh2b7zyqh0w9pmotq00/Resumo-do-Manual-de-Convers-o-de-Banco-de-Dados.pdf?rlkey=r0pepqxd3iardoekpseath0es&dl=0)

<br>

# Documentação de Conversão de Banco de Dados

### **1. Preparação do Ambiente**

Antes de iniciar o processo de conversão de banco de dados, é fundamental preparar o ambiente de trabalho. Isso inclui a criação de uma planilha para coleta de dados e a organização de pastas para armazenamento dos bancos de dados. Além disso, todas as ferramentas necessárias para a conversão devem ser instaladas.

#### **1.1. Planilha de Dados do Revendedor**

Crie uma planilha com os seguintes campos:

- Nome do Revendedor
- Nome da Empresa Revendedora
- Número de Telefone
- Sistema Utilizado
- SGBD
- Extensão do Arquivo
- Data de Recebimento
- Data de Entrega
- Responsável pela Conversão

#### **1.2. Organização de Pastas**

Estruture uma pasta principal chamada "Conversao". Dentro dela, organize subpastas com a seguinte estrutura:

    C:/Users/User/Desktop/CONVERSAO/[NOME_REVENDA]/[DATA]/[CNPJ]

  ###### Observacao: O campo CNPJ refere-se ao CNPJ do cliente cujo banco de dados está sendo convertido.

#### Exemplo:
    C:/Users/User/Desktop/CONVERSAO/HERA_SISTEMAS/01082024/19560707000180/

#### **1.3. Instalação de Ferramentas**

Certifique-se de que as seguintes ferramentas estão instaladas:

- [DBeaver](https://www.dropbox.com/scl/fi/1o0y200vwnurmj8fj73zt/dbeaver-ce-22.2.0-x86_64-setup.exe?rlkey=ge184hkjucfeuwhu0pjl0x9d8&dl=0)
- [Excel e Access](https://www.dropbox.com/scl/fo/tkk6fr8kp5bco98b32ysb/AEif7Oivo64EeTXvSs0MPGw?rlkey=d2otzvkfj15483v2o1pqg6e3v&dl=0)
- [Accesspv](https://www.dropbox.com/scl/fi/w01gzsx22gqh6cu8jpeen/Firebird-4.0.2.2816-0-x64.exe?rlkey=z1un22842uq23mxe18y5mtol0&dl=0)
- [PostgreSQL](https://www.dropbox.com/scl/fi/rcv94tu0di94x5tgjmjgx/postgresql-16.3-2-windows-x64.exe?rlkey=3tqfnut81j2kws6w6n7bgo6db&dl=0)
- [Firebird v1.5](https://www.dropbox.com/scl/fi/ns1kru3xgjjy9bzptvece/Firebird-1.5.6.5026-0-Win32.exe?rlkey=lv1e0qns3rxfileu1bfchhjrx&dl=0)
- [Firebird v2.0](https://www.dropbox.com/scl/fi/zmr7qamjsbutce7zugvvw/Firebird-2.0.7.13318_0_win32.exe?rlkey=019lt0uch20yk8f5ynj50wc4a&dl=0) 
- [Firebird v2.1](https://www.dropbox.com/scl/fi/q3xds4hn4lavcgu3tg34h/Firebird-2.1.7.18553_0_x64.exe?rlkey=3qwovbvixnfz7p9xjrqulqplb&dl=0)
- [Firebird v2.5](https://www.dropbox.com/scl/fi/qmb85k9va0urhrvycvk11/Firebird-2.5.9.27139_0_x64.exe?rlkey=y2nr9b2jcts3njxelji45jd2o&dl=0)
- [Firebird v3.0](https://www.dropbox.com/scl/fi/0s9m1mfgi6jnvqotry4fv/Firebird-3.0.10.33601_0_x64.exe?rlkey=kz7dg2sjsnqhiv60bdvczzdjd&dl=0)
- [Firebird v4.0](https://www.dropbox.com/scl/fi/w01gzsx22gqh6cu8jpeen/Firebird-4.0.2.2816-0-x64.exe?rlkey=z1un22842uq23mxe18y5mtol0&dl=0)
- [MySQL](https://www.dropbox.com/scl/fi/lqdl7syjjvcj5yappdhyz/mysql-installer-community-5.6.15.0.msi?rlkey=4wsranq82xkqxzmyr9y1zlqgd&dl=0)
- [MariaDB](https://www.dropbox.com/scl/fi/7rmhuhcyeewzamw5fihef/mariadb-10.4.28-winx64.msi?rlkey=hugujqs8mmt3vq01d4oro8p4k&dl=0)
- [SQL Server](https://www.dropbox.com/scl/fi/g8r58telrlhz3y9bbgupb/SQL2022-SSEI-Expr.exe?rlkey=uckkpqvmyu2wsqpy0w8bcxq6b&dl=0)
- [Paradox Data Editor](https://www.dropbox.com/scl/fi/67kzk6mh4hjunyz4zkhin/PDESetup.exe?rlkey=xixo670xqwrzzmblvhszwtsvj&dl=0)
- [MongoDB](https://www.mongodb.com/) (Opcional)
- [IBOConsole](https://www.dropbox.com/scl/fi/fwvygpf31nbpvy7ykczjn/iboconsole.exe?rlkey=ttincicum5ubobydgojbkkn42&dl=0) (Opcional)
- [MySQL-Front](https://www.dropbox.com/scl/fi/kfkpa4w0d67fdmzz7j1jt/MySQL-Front-Atualizado.exe?rlkey=02x6wap0y6fbkk9bfn8u4nlp5&dl=0) (Opcional)
- [IBEXPERT](https://www.dropbox.com/scl/fo/new5g4p728a0patt247ix/AIMNObnEkUYOqCqAvk0EeAM?rlkey=af3w9byv7cu83aqv66e79sc85&dl=0) (Opcional)
- [PGAdmin](https://sbp.enterprisedb.com/getfile.jsp?fileid=1259105) (Opcional)
- [SSMS](https://www.dropbox.com/s/tnfmvwdt4cfrbqu/SSMS-Setup-PTB.exe?dl=0) (Opcional)

---

### **2. Atendimento ao Revendedor**

#### **2.1. Recepção e Coleta de Informações**

Quando o revendedor entrar em contato:

1. **Apresente-se e cumprimente-o cordialmente.**
2. **Solicite informações sobre a base de dados e o sistema utilizado.**
3. **Pergunte se é possível exportar os dados em Excel.** Se não, solicite o banco de dados diretamente.
4. **Se o revendedor não tiver conhecimento técnico suficiente, solicite acesso remoto à máquina com o banco de dados.**

#### **2.2. Coleta de Dados Necessários**

Pergunte sobre os dados necessários, comumente incluindo:

- Produtos
- Clientes
- Fornecedores

Caso o cliente solicite dados adicionais (códigos auxiliares, grade, contas a pagar/receber), informe que será necessária uma análise detalhada e que o prazo de entrega será ajustado após a verificação.

---

### **3. Verificação e Conversão de Dados**

#### **3.1. Localização do Banco de Dados**

- **Verifique se o sistema do cliente permite exportação em formatos como Excel, JSON ou XML.**
- **Caso contrário, localize o banco de dados no sistema do cliente.** Procure nas pastas do sistema por nomes como "Data", "Dados", "Banco", "Backup", "Server" ou na pasta raiz do sistema.

#### **3.2. Análise do Banco de Dados**

1. **Analise as tabelas e campos para identificar os dados necessários.**
2. **Informe ao cliente sobre o prazo de finalização da conversão.**

#### **3.3. Armazenamento e Conversão**

- **Armazene os dados coletados na pasta correta.**
- **Anote o status da conversão na planilha como PENDENTE, EM ANDAMENTO, PRONTO ou ENTREGUE.**
- **Realize a conversão o mais breve possível.**

---

### **4. Finalização**

Após a conclusão da conversão, entre em contato com o cliente para informar que o processo foi finalizado e disponibilize os dados convertidos conforme o combinado.

**Nota:** Mantenha uma comunicação clara e transparente com o cliente durante todo o processo para garantir que todas as expectativas sejam atendidas e para evitar problemas futuros.

## Tipos de Banco

| Extensões | Info |
|-------------|-------------|
| .csv | Valores Separados por virgula |
| .txt | Texto |
| .xls .xlsx | Excel |
| .mdb | Access |
| .sql | MySQL / MariaDB / SQLite |
| .mdf .bak | SQL Server |
| .fdb .fbk, .gdb | Firebird |
| .backup | Postgres |
| .db | Paradox |


---
## Execute os seguinte comandos:
* ATUALIZA CAMPOS TABELA
   ```sql
   update produotos set iat='A',ippt='T',alterado=',',custooperacional=0, fatorDeMultiplicacao =1, fatorQtdUnd =0, quantidadeMaximaVenda =0, totalComprado =0,PRODUTOBALANCA=0, estoquemaximo=0, produtoMultiLoja =0, alterarPrecoMultiLoja =0, pedeNumeroSerieVenda =0, pagaComissao =0, limitarDesconto =0, finalidadeProduto =1, descricaoLivre =0, bloquearQuantidadeVenda =0, produtoInativo =0, quantidade =1, precoLivre =0, possuiSubItens =0, listaSubItens =0, produtograde =0,BALANCACAIXA=0, etiqueta =0, estoqueminimo =0, balancacaixa =0,gradeprodutos=0,idunidadecompra=1,PESOBRUTO=0,PESOLIQUIDO=0, percentualComissaoPrazo = 0.00, tipoComissao = 0, ultimaquantidadecomprada=0, valorComissaoPrazo = 0.00, valorComissaoVista = 0.00, percentualMaximoDesconto = 0, dataUltimaCompra = NULL, horaAlteracao = NULL, idFamilia = NULL, dataAlteracao = NULL, alteradoMultiLoja = ',', codigointerno = id, alteradoEm = '', localizacao = '', percentualComissao = 0, produtoGrade = NULL, alteradoMultiLoja = ',';
   ```
* ATUALIZA OS VALORES
   ```sql
  UPDATE produotos SET VALORCOMPRA=VALORCUSTO WHERE valorCompra IS NULL OR valorCompra = '';
  UPDATE produotos SET valorVenda=valorcusto WHERE valorvenda IS NULL OR valorVenda < valorCusto;
  UPDATE produotos SET valorVenda=0.01 WHERE valorvenda IS NULL OR valorvenda = 0.00;
  UPDATE produotos SET valorVendaAtacado=0.01 WHERE valorvendaAtacado IS NULL OR valorvendaAtacado = 0.00;
  UPDATE produotos SET valorVendaEtiqueta = valorvenda;
  UPDATE produotos SET valorCusto = valorvenda WHERE valorcusto > valorvenda OR valorcusto IS NULL;
  UPDATE produotos SET valorCompra=0 WHERE valorcompra IS NULL;
   ```
* ATUALIZA O GTIN
   ```sql
  UPDATE produotos SET gtin = referencia WHERE GTIN IS NULL OR gtin='';
  UPDATE produotos SET gtin = TRIM(LEADING '0' FROM gtin);
  UPDATE produotos SET gtin = referencia WHERE GTIN IS NULL OR gtin='';
  UPDATE produotos SET GTINETIQUETAS = GTIN;
   ```
* REMOVE LETRAS E CARACTERES ESTRANHOS DO GTIN
   ```sql
  UPDATE produotos SET gtin = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(gtin,'A',''),'B',''),'C',''),'D', ''),'E', ''),'F', ''),'G', ''),'H', ''),'I', ''),'J', ''),'K', ''),'L', ''),'M', ''),'N', ''),'O', ''),'P', ''),'Q', ''),'R', ''),'S', ''),'T', ''),'U', ''),'V', ''),'W', ''),'X', ''),'Y', ''),'Z', '');
  UPDATE produotos SET gtin = replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(gtin,'a',''),'b',''),'c',''),'d', ''),'e', ''),'f', ''),'g', ''),'h', ''),'i', ''),'j', ''),'k', ''),'l', ''),'m', ''),'n', ''),'o', ''),'p', ''),'q', ''),'r', ''),'s', ''),'t', ''),'u', ''),'v', ''),'w', ''),'x', ''),'y', ''),'z', '');
  UPDATE produotos SET gtin = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(gtin,'Á',''),'É',''),'Í',''),'Ó', ''),'Ú', ''),'á', ''),'é', ''),'í', ''),'ó', ''),'ú', ''),'Â', ''),'Ê', ''),'Ô', ''),'â', ''),'ê', ''),'ô', ''),'À', ''),'à', ''),'Ü', ''),'ü', ''),'Ç', ''),'ç', ''),'Ñ', ''),'ñ', ''),'Ã', ''),'Õ', '');
  UPDATE produotos SET gtin = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(gtin,'õ',''),'ä',''),'ë',''),'ï', ''),'ö', ''),'ü', ''),'ÿ', ''),'Ä', ''),'Ë', ''),'Ï', ''),'Ö', ''),'Ü', ''),'Ÿ', ''),'å', ''),'Å', ''),'æ', ''),'Æ', ''),'œ', ''),'Œ', ''),'.', ''),'|', ''),' ', ''),',', ''),'!', ''),'@', ''),'/', '');
  UPDATE produotos SET gtin = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(gtin,'ã',''),'-',''),'-',''),'%', ''),'$', ''),'¨', ''),'&', ''),'*', ''),'(', ''),')', ''),'+', ''),'=', ''),'§', ''),':', ''),';', ''),'?', ''),'¿', ''),'�', ''),'^', ''),'~', ''),'{', ''),'}', ''),'´', ''),'`', ''),'_', ''),'º', '');
  UPDATE produotos SET gtin = REPLACE(REPLACE(REPLACE(gtin,'[',''),']',''),'¬','');
   ```
* ADICIONA ZERO A ESQUERDA NO CODIGO NCM E CEST (CASO PRECISE)
   ```sql
  update produotos set codigoncm= concat('0',codigoncm) where length (codigoncm)<8;
  UPDATE produotos SET codigocest=concat('0',codigocest) WHERE length(codigocest)<7;
   ```
* ATUALIZA O CODIGO NCM E CEST
   ```sql
  UPDATE produotos AS p SET codigoncm = '62046300' WHERE codigoncm IS NULL or LENGTH(codigoncm)<=7 or LENGTH(codigoncm)>=9 or codigoNCM = '00000000';
  UPDATE produotos AS p SET codigocest = '' WHERE codigocest IS NULL or LENGTH(codigocest)<=6 or LENGTH(codigocest)>=8 or codigoCEST = '0000000';
   ```
* VERIFICA SE EXISTE GTIN DUPLICADO (EXPORTE O EXCEL E ENVIE PARA O CLIENTE)
   ```sql
  SELECT distinct id,referencia,gtin,gtintributavel FROM produotos GROUP by gtin having count(*) > 1;
   ```
* ATUALZIA NOME E ADICIONA CODIGO INTERNO
  ```sql
  UPDATE produotos SET nome = CONCAT(nome,' ',codigoInterno) WHERE EXISTS (SELECT nome FROM(SELECT nome FROM produotos)
  AS tmpb WHERE produotos.nome = tmpb.nome GROUP BY nome HAVING COUNT(nome) > 1);
  ```
* ATUALIZA PRODUTOS DE KG PARA ENVIAR PARA BALANCA E PESAR NO CAIXA
  ```sql
  UPDATE produotos SET balancacaixa=1,produtobalanca=1 where idunidade=2
  ```
  * ATUALIZA ESTOQUE
  ```sql
  update produotos set estoqueatual=0 where estoqueatual is null or estoqueatual < -999999 or estoqueatual > 999999;
  ```
  * ATUALIZA MARGEM DE LUCRO E CUSTO OPERACIONAL
  ```sql
  UPDATE PRODUOTOS SET MARKUP = ((valorVenda / Round(valorCusto,2)) * 100) - 100;
  UPDATE PRODUOTOS SET MARKUP = 0 WHERE MARKUP IS NULL OR MARKUP = '' OR MARKUP = 0;
  UPDATE PRODUOTOS SET MARKUPATACADO = ((valorVendaAtacado / Round(valorCusto,2)) * 100) - 100;
  UPDATE PRODUOTOS SET MARKUPATACADO = 0 WHERE MARKUPATACADO IS NULL OR MARKUPATACADO = '' OR MARKUP = 0;
  UPDATE PRODUOTOS SET custooperacional = ((valorCusto / Round(valorCompra,2)) * 100) - 100 WHERE valorcusto != valorcompra;
  UPDATE PRODUOTOS SET custooperacional = 0 WHERE custooperacional IS NULL OR custooperacional = '' OR custooperacional = 0;
  ```
  * VERIFICAÇÕE BASICAS DE CAMPOS COM CHAVES ESTRANGEIRAS
  ```sql
  UPDATE produotos SET idUnidade = 1 WHERE idUnidade IS NULL OR idUnidade = 0;
  UPDATE produotos SET idFiscal = 1 WHERE idFiscal IS NULL OR idFiscal = 0;
  UPDATE produotos SET idFornecedor = 1 WHERE idFornecedor IS NULL OR idFornecedor = 0;
  UPDATE produotos SET idGrupo = 1 WHERE idGrupo IS NULL OR idGrupo = 0;
  UPDATE produotos SET idSetor = 1 WHERE idSetor IS NULL OR idSetor = 0;
  UPDATE produotos SET idSubGrupo = 1 WHERE idSubGrupo IS NULL OR idSubGrupo = 0;

  ```
  * PEGA O CAMPO OBSERVACAO E TRANSFORMA EM SETOR
  ```sql
  INSERT INTO setores(nome,excluido,idmatriz)
  SELECT UPPER(observacao), 0, 1 FROM produotos p WHERE p.observacao IS NOT NULL GROUP BY observacao;
  UPDATE PRODUOTOS AS P INNER JOIN SETORES AS S ON P.observacao=S.nome SET P.IDSETOR=S.ID;
  ```
  * PEGA O CAMPO DESCRICAOPDV E TRANSFORMA EM GRUPO
  ```sql
  INSERT INTO grupos(nome,excluido,idmatriz) SELECT UPPER(descricaoPDV), 0, 1 FROM produotos WHERE descricaoPDV IS NOT NULL GROUP BY descricaoPDV;
  UPDATE PRODUOTOS AS P INNER JOIN GRUPOS AS S ON P.descricaoPDV=S.NOME SET P.IDGRUPO=S.ID;
  ```
  * PEGA O CAMPO DESCRICAOETIQUETAS E TRANSFORMA EM SUBGRUPO
  ```sql
  INSERT INTO subgrupos(nome,excluido,idmatriz)
  SELECT UPPER(descricaoEtiquetas), 0, 1 FROM produotos AS p 
  WHERE descricaoEtiquetas IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM subgrupos AS s WHERE UPPER(p.descricaoEtiquetas) = s.nome
  )
  GROUP BY UPPER(descricaoEtiquetas);

  UPDATE PRODUOTOS AS P INNER JOIN SUBGRUPOS AS S ON P.descricaoEtiquetas=S.NOME SET P.IDSUBGRUPO=S.ID;
  ```
  * INSERE DADOS EM historicoatualizacoesprodutos
  ```sql
  INSERT INTO historicoatualizacoesprodutos (alteradoEm, custoOperacionalAnterior, custoOperacionalAtual, dataHoraAlteracao, estoqueAnterior, estoqueAtual, margemAnterior, margemAtual, primeiroCadastro, valorCompraAnterior, valorCompraAtual, valorCustoAnterior, valorCustoAtual, valorVendaAnterior, valorVendaAtual, idProduto, idUsuario, margemAnteriorAtacado, valorVendaAnteriorAtacado)
  SELECT 
      'Conversao de Banco de Dados',
      custoOperacional,
      custoOperacional,
      NOW(),
      estoqueAtual,
      estoqueAtual,
      markup,
      markup,
      1,
      valorCompra,
      valorCompra,
      valorCusto,
      valorCusto,
      valorVenda,
      valorVenda,
      id,
      1,
      markUpAtacado,
      valorVendaAtacado
  FROM 
      produotos;
  ```




## Verificações

- [x] Add Changelog
- [x] Add Voltar para o topo links
- [ ] Add Additional Templates w/ Examples
- [ ] Add "components" document to easily copy & paste sections of the readme
- [ ] Multi-language Support
    - [ ] Chinese
    - [ ] Spanish

See the [open issues](https://github.com/issues) for a full list of proposed features (and known issues).

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

## Contato

### Kaique Sousa Farias
- [LinkedIn](https://www.linkedin.com/in/kaique-sousa-farias/)
- [GitHub](https://github.com/your_username/repo_name)