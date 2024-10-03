--ATUALZIAR CAMPOS
UPDATE pessoas SET sincronizado = ',', limiteCompraUsado =0, limiteValeFuncionario =0, limiteValeFuncionarioUsado =0, percentualComissaoPrazo =0, percentualComissaoVista =0, excluido ='N', ID_PAIS = 1, limite = 0, status = 1, idLoja = 0, quantidadeAlterados = 0, alteradoMultiLoja = ','
WHERE id != 1;

UPDATE pessoas SET nome = replace( TRIM(nome), '  ', ' ' );
UPDATE pessoas SET nomeFantasia = nome WHERE nomeFantasia IS NULL OR nomeFantasia = '';

--TRATAMENTO DE DADOS
UPDATE pessoas SET cnpj = replace( cnpj, '-', '' );
UPDATE pessoas SET cnpj = replace( cnpj, '/', '' );
UPDATE pessoas SET cnpj = replace( cnpj, '.', '' );
UPDATE pessoas SET cpf = replace( cpf, '-', '' );
UPDATE pessoas SET cpf = replace( cpf, '/', '' );
UPDATE pessoas SET cpf = replace( cpf, '.', '' );
UPDATE pessoas SET cep = replace( cep, '-', '' );
UPDATE pessoas SET cep = replace( cep, '/', '' );
UPDATE pessoas SET cep = replace( cep, '.', '' );
UPDATE pessoas SET inscricaoEstadual = replace( inscricaoEstadual, '-', '' );
UPDATE pessoas SET inscricaoEstadual = replace( inscricaoEstadual, '/', '' );
UPDATE pessoas SET inscricaoEstadual = replace( inscricaoEstadual, '.', '' );
UPDATE pessoas SET telefoneComercial = replace( telefoneComercial, '(', '' );
UPDATE pessoas SET telefoneComercial = replace( telefoneComercial, '-', '' );
UPDATE pessoas SET telefoneComercial = replace( telefoneComercial, ' ', '' );
UPDATE pessoas SET telefoneComercial = replace( telefoneComercial, ')', '' );
UPDATE pessoas SET telefoneComercial = replace( telefoneComercial, 'x', '' );
UPDATE pessoas SET celularComercial = replace( celularComercial, '(', '' );
UPDATE pessoas SET celularComercial = replace( celularComercial, '-', '' );
UPDATE pessoas SET celularComercial = replace( celularComercial, ' ', '' );
UPDATE pessoas SET celularComercial = replace( celularComercial, ')', '' );
UPDATE pessoas SET celularComercial = replace( celularComercial, 'x', '' );

-- Ativa cliente
update pessoas set cliente = 1
-- Ativa fornecedor
update pessoas set fornecedor = 1

-- CPF E CNPJ JUNTOS
update pessoas set cpf=cnpj,cnpj=null where length(cnpj)<=11 and cnpj IS NOT NULL

-- Adicionar zero a esquerda
UPDATE pessoas SET cpf=concat('0',cpf) WHERE length(cpf)<11 AND cpf IS NOT NULL;
UPDATE pessoas SET cnpj=concat('0',cnpj) WHERE length(cnpj)<14 and cnpj IS NOT NULL;