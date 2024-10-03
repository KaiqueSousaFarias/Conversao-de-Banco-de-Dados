PRODUTOS

SELECT p.idproduto AS referencia, p.cdchamada AS gtin,
CASE u.dssigla
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
END
AS idUnidade,
p.nmproduto AS nome, g.nmgrupo AS observacao,
d.vlprecocusto AS valorCusto, d.vlprecovenda AS valorVenda,
CASE p.tributacao
WHEN 'T' THEN 1
WHEN 'S' THEN 2
WHEN 'N' THEN 3
ELSE 1
END
AS idFiscal, p.cdipi AS codigoNCM, p.cest AS codigoCEST,
e.qtestoque estoqueAtual
FROM produto AS p
LEFT JOIN unidade AS u
ON u.idunidade = p.idunidade 
LEFT JOIN grupo AS g 
ON g.idgrupo = p.idgrupo
LEFT JOIN detalhe AS d
ON d.idproduto = p.idproduto
LEFT JOIN estoque AS e
ON e.iddetalhe = d.iddetalhe
WHERE p.nmproduto != 'DESATIVADO' AND p.stativo = 'S';

PESSOAS

SELECT sttipopessoa observacao, nmpessoa nome, nmendereco logradouro, nmbairro bairro, nmcep cep, nmcidade cidade, iduf uf, email emailComercial, concat(nrtelefone, ' / ', nrtelcomercial,  ' / ', nrtelfax, ' / ', nrpager, ' / ', nrcodpager, ' / ', nrtelcontato) contato, nrcgc_cic cnpj, nrincrest_rg inscricaoEstadual, nrlogradouro numero, dscomplemento complemento
FROM wshop.pessoas;