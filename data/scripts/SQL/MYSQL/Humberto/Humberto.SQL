PRODUTO
-------------

SELECT
ROW_NUMBER() OVER (ORDER BY p.id) AS codigoInterno,
p.id AS referencia,
p.codigo_barras AS gtin,
UPPER(p.nome) AS nome,
CASE cst.codigotributario
WHEN 102 THEN 1
WHEN 300 THEN 2
WHEN 500 THEN 3
WHEN 00 THEN 4
WHEN 10 THEN 5
WHEN 20 THEN 6
WHEN 40 THEN 7
WHEN 41 THEN 8
WHEN 60 THEN 9
WHEN 61 THEN 10
ELSE 1
END AS idFiscal,
ncm.codigo AS codigoNCM,
cest.cest AS codigoCEST,
p.preco_custo AS valorCusto,
p.preco_venda AS valorVenda,
p.margem_lucro AS markup,
estoque AS estoqueAtual
FROM produto AS p
LEFT JOIN unidade AS u
ON u.id = p.id_unidade
LEFT JOIN cst
ON cst.id = p.id_cst
LEFT JOIN ncm
ON ncm.id = id_ncm
LEFT JOIN cest
ON cest.id = id_cest
WHERE p.ativo = 1;


-----
CLIENTE
-----
SELECT id observacao, cpf_cnpj cnpj, ie inscricaoEstadual,nome, rg registroGeral, endereco logradouro, numero, referencia complemento, cep, bairro, telefone telefoneResidencial, tel_comercial telefoneComercial, fax contato, email_adi emailComercial, 1 as cliente
FROM cliente;

-------
FORNECEDOR
-------
SELECT id observacao, cnpj_cpf cnpj, ie inscricaoEstadual,nome, endereco logradouro, numero, cep, bairro, 1 as fornecedor
FROM fornecedor;


------
CONTA A PAGAR
------
UPDATE pagar SET valor_pag = 0 WHERE valor_pag IS NULL
SELECT id numeroDocumento, id_fornecedor observacao, numero_nf numeroDocumento, lancamento dataLancamento, emissao dataEmissao, vencimento dataVencimento, parcela, valor, valor_pag valorPago, data_pag dataPagamento, (valor-valor_pag) valorRestante
FROM pagar;


-----
CONTA A RECEBER
-----
UPDATE receber SET valor_rec = 0 WHERE valor_rec IS NULL
SELECT id numeroDocumento, id_cliente observacao, lancamento dataLancamento, emissao dataEmissao, vencimento dataVencimento, parcela, valor_original valor, valor_rec valorPago, data_rec dataPagamento, (valor_original-valor_rec) valorRestante
FROM receber;

---
SCRIPTS
----


UPDATE contasreceber
SET juros = 0, taxas = 0, tipoTaxa = 'P', tipoJuros = 'P', `ID_CONTA` = 1, `ID_TIPO_CAIXA`= 1, `ID_PLANO_PAGAMENTO`= 1, diasInadimplencia = 0, diasIncidenciaJuros = 0, diasIncidenciaMultas = 0, modalidadeJuros = 0, percentualAcrescimo = 0, percentualDesconto=0,totalJuros=0,totalJuros=0,totalTaxas=0,valorAcrescimo=0,valorDesconto=0,valorJuros=0,valorTaxas=0, ID_USUARIO_LANCAMENTO = 1;
UPDATE contaspagar
SET juros = 0, taxas = 0, tipoTaxa = 'P', tipoJuros = 'P', `ID_CONTA` = 1, `ID_TIPO_CAIXA`= 1, `ID_PLANO_PAGAMENTO`= 1, diasInadimplencia = 0, diasIncidenciaJuros = 0, diasIncidenciaMultas = 0, modalidadeJuros = 0, percentualAcrescimo = 0, percentualDesconto=0,totalJuros=0,totalJuros=0,totalTaxas=0,valorAcrescimo=0,valorDesconto=0,valorJuros=0,valorTaxas=0, ID_USUARIO_LANCAMENTO = 1;

UPDATE contaspagar
SET status = 1 WHERE valorRestante = 0;
UPDATE contasreceber
SET status = 1 WHERE valorRestante = 0;

UPDATE contaspagar
SET status = 0 WHERE valorRestante != 0;
UPDATE contasreceber
SET status = 0 WHERE valorRestante != 0;


UPDATE contaspagar
SET numeroDocumento = CONCAT('DOC' ,id, id_fornecedor);
UPDATE contasreceber
SET numeroDocumento = CONCAT('DOC' ,id, id_cliente);
 

UPDATE contasreceber AS cr INNER JOIN pessoas AS p ON p.observacao = cr.observacao SET cr.id_cliente = p.id;
UPDATE contaspagar AS cp INNER JOIN pessoas AS p ON p.observacao = cp.observacao SET cp.id_fornecedor = p.id;

UPDATE contaspagar SET observacao = id_fornecedor;
UPDATE contasreceber SET observacao = id_cliente;

UPDATE contaspagar SET dataPagamento = NULL WHERE dataPagamento = '0000-00-00';
UPDATE contasreceber SET dataPagamento = NULL WHERE dataPagamento = '0000-00-00';