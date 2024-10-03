-- PRODUTOS

SELECT p.id_produto referencia, p.tx_descricao nome, g.tx_descricao descricaoPDV,
sg.tx_descricao descricaoEtiquetas, tx_ncm codigoNCM, nu_cest codigoCEST, nu_dia_validade validadeDias,
CASE u.id_unidade
WHEN 'UN' THEN 1
WHEN 'UND' THEN 1
WHEN 'KG' THEN 2
WHEN 'LT' THEN 3
WHEN 'CX' THEN 4
WHEN 'DZ' THEN 5
WHEN 'FD' THEN 6
WHEN 'GL' THEN 7
WHEN 'GR' THEN 8
WHEN 'BD' THEN 9
WHEN 'MT' THEN 10
WHEN 'M2' THEN 11
WHEN 'M3' THEN 12
WHEN 'MG' THEN 13
WHEN 'ML' THEN 14
WHEN 'MM' THEN 15
WHEN 'PC' THEN 16
WHEN 'PCT' THEN 16
ELSE 1
END idUnidade, u.nu_gtin gtin, u.vr_custo valorCusto, u.vr_venda valorVenda
FROM sc_md.tb_fat_produto p
LEFT JOIN sc_md.tb_fat_produto_grupo g
ON p.id_grupo = g.id_grupo
LEFT JOIN sc_md.tb_fat_produto_grupo_detalhe sg
ON p.id_sub_grupo = sg.id_sub_grupo
LEFT JOIN sc_md.tb_fat_produto_unidade u
ON p.id_produto = u.id_produto
WHERE p.lo_ativo = 'S'

-- PESSOAS
SELECT id_cliente observacao, tx_razao_social nome, tx_nm_fantasia nomeFantasia, tx_cnpj_cpf cnpj,
nu_telefone contato, tx_email emailComercial, tx_logradouro logradouro, nu_endereco numero,
tx_complemento complemento, tx_bairro bairro, tx_cidade cidade, id_uf uf, tx_cep cep,
dt_nascimento dataNascimento, 
CASE tx_tipo
WHEN 'C' THEN 1
ELSE 0
END cliente,
CASE tx_tipo
WHEN 'F' THEN 1
ELSE 0
END fornecedor
FROM sc_md.tb_fat_cliente_fornecedor
