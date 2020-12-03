USE BD_ENERZEE;

# ************************************************************************************************
# Cada consulta possui o objetivo da consulta. e embaixo, a explicação destrinchada da consulta **
# ************************************************************************************************

# 1 - Encontra o CPF dos associados de todas as propostas existentes
# O primeiro select pega o cpf de todos os associados, contudo, apenas seleciona os que estao contidos no segundo
# select da proposta
SELECT cpf
	FROM Associado
	WHERE id_associado IN (SELECT id_proposta FROM Proposta);

# 2 - Encontra as obras que possuem prazo_estimado de 90 dias ou mais, cada engenheiro coordena
# O primeiro select pega todas as informações de obra, associado e engenheiro e faz a intersecção com os dados do
# segundo select, resultando nos dados pedidos
SELECT a.nome, o.id_obra, o.prazo_estimado_dias
	FROM Obra o,
		 Associado a,
		 Engenheiro e
	WHERE a.id_associado = e.id_engenheiro INTERSECT SELECT a.nome, eco.id_obra, o.prazo_estimado_dias
														 FROM Engenheiro_coordena_obra eco,
															  Obra o,
															  Associado a
														 WHERE eco.id_engenheiro = a.id_associado
														   AND eco.id_obra = o.id_obra
														   AND o.prazo_estimado_dias >= 90;

# 3 - Encontra os cliente que tiveram suas propostas aprovadas em obras com prazo estimado maior que "90" dias
# O primeiro select pega todas as informações de Cliente e Proposta, correlaciona o id do cliente com o id das
# propostas aprovadas e faz a intersecção dos dados com o segundo select, onde são retornados os cliente com propostas
# em obras com prazo estimado maior que "90" dias
SELECT c.nome, p.resultado
	FROM Cliente c,
		 Proposta p
	WHERE c.id_cliente = p.id_cliente
	  AND p.resultado = 1 INTERSECT SELECT c.nome, p.resultado
										FROM Cliente c,
											 Proposta p,
											 Obra o
										WHERE c.id_cliente = p.id_cliente
										  AND p.id_obra = o.id_obra
										  AND o.prazo_estimado_dias > 90;

# 4 - Encontra as propostas que contem o produto "Modulo3" ou "Inversor1"
# O primeiro select seleciona as propostas contendo o produto "Modulo3" e faz a uniao com o segundo select, onde são
# retornadas as propostas com produto "Inversor1"
SELECT poss.id_proposta
	FROM Proposta_possui_produto poss,
		 Produto prod
	WHERE poss.id_produto = prod.id_produto
	  AND prod.nome_prod = 'Modulo3'
UNION
SELECT poss.id_proposta
	FROM Proposta_possui_produto poss,
		 Produto prod
	WHERE poss.id_produto = prod.id_produto
	  AND prod.nome_prod = 'Inversor1';

# 5 - Encontra as propostas que contem o produto "Modulo3" mas nao o "Inversor1"
# O primeiro select seleciona as propostas contendo o produto "Modulo3" mas que não contem as informações do segundo
# select, onde são retornadas as propostas com produto "Inversor1"
SELECT poss.id_proposta
	FROM Proposta_possui_produto poss,
		 Produto prod
	WHERE poss.id_produto = prod.id_produto
	  AND prod.nome_prod = 'Modulo3' EXCEPT
SELECT poss.id_proposta
	FROM Proposta_possui_produto poss,
		 Produto prod
	WHERE poss.id_produto = prod.id_produto
	  AND prod.nome_prod = 'Inversor1';

# 6 - Encontra as propostas que contem o produto com potencia "4" ou que contem engenheiros que fazem "Terraplanagem"
# O primeiro select seleciona as propostas contendo o produto com potencia "4" e faz a uniao com o segundo select,
# onde são retornadas as propostas que contem engenheiros que fazem "Terraplanagem"
SELECT poss.id_proposta
	FROM Proposta_possui_produto poss,
		 Produto prod
	WHERE poss.id_produto = prod.id_produto
	  AND prod.potencia = 4
UNION
SELECT p.id_proposta
	FROM Proposta p,
		 Engenheiro e
	WHERE p.id_engenheiro = e.id_engenheiro
	  AND e.area_atuacao = 'Terraplanagem';

# 7 - Encontra todos os clientes que compraram o produto "6"
# O primeiro select seleciona todos os clientes contidos em propostas e pergunta se existe alguma dessas propostas
# que possuem o produto 6 na tabela "Proposta_possui_produto"
SELECT c.nome
	FROM Cliente c,
		 Proposta p
	WHERE c.id_cliente = p.id_cliente
	  AND exists(
			SELECT * FROM Proposta_possui_produto poss WHERE poss.id_proposta = p.id_proposta AND poss.id_produto = 6);

# 8 - Encontra todos os clientes que NAO compraram o produto "Modulo"
# O primeiro select seleciona todos os clientes e apenas retorna os que não estão na segunda consulta, que no caso,
# retorna todos os clientes que NAO compraram o produto "Modulo"
SELECT c.nome
	FROM Cliente c
	WHERE c.id_cliente NOT IN (SELECT c2.id_cliente
								   FROM Cliente c2,
										Proposta prop,
										Proposta_possui_produto poss,
										Produto prod
								   WHERE c2.id_cliente = prop.id_cliente
									 AND prop.id_proposta = poss.id_proposta
									 AND poss.id_produto = prod.id_produto
									 AND prod.nome_prod = 'Modulo');
# 9 - Encontra o nome do produto mais vendido
#  O primeiro select seleciona o nome de produtos, relacionando o id do produto de uma tabela com a outra, e apenas
# retorna os produtos que estão na segunda consulta, onde são retornados os produtos com qntd máxima
SELECT prod.nome_prod
	FROM Produto prod,
		 Proposta_possui_produto poss
	WHERE prod.id_produto = poss.id_produto
	  AND poss.qntd IN (SELECT max(qntd) FROM Proposta_possui_produto);
# 10 - Encontra o nome_fantasia da franquia cujo cargo do franqueado é "Perder encomendas" (Contem Easter egg)
# Seleciona o nome_fantasia das franquias e apenas retorna as franquias cujo id está contido na segunda consulta, que no
# caso, seleciona o id da franquia, relaciona com o id do franqueado e cujo cargo é igual à "Perder encomendas"
SELECT nome_fantasia
	FROM Franquia
	WHERE id_franquia IN (SELECT Franquia.id_franquia
							  FROM Franquia,
								   Franqueado
							  WHERE Franquia.id_franquia = Franqueado.id_franquia
								AND cargo = 'Perder encomendas');