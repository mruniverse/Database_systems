#=================================================================
insert into Associado (id_associado, nome, cpf, email, telefone, endereco)
values (1, 'Raimundo Bento Melo', '794.276.870-88', 'raimundobentomelo_@saae.sp', '79981836229', 'Rua A'),
       (2, 'Marcelo César Carlos', '275.647.930-66', 'marcelocesarcarloseduardoalmada-90@engemed.com.br', '85997214310','Rua Pedro Artur'),
       (3, 'Gustavo João Barbosa', '056.270.681-08', 'ggustavojoaobarbosa@prestec.com', '85987665053', 'Parque Gavião'),
       (4, 'Nina Tatiane Gonçalves', '777.442.506-30', 'ninatatianegoncalves_@embraer.com', '81981894960','Rua José Targino de Castro'),
       (5, 'Carlos Thales Alexandre', '703.608.568-10','carlosthalesalexandreferreira__carlosthalesalexandreferreira@editorazap.com', '82985934214','Rua Nelson de Azevedo Souza'),
       (6, 'Pedro Ricardo Samuel', '538.463.777-32', 'pedroricardosamuelsales__pedroricardosamuelsales@prlme.com','79987640552', 'Rua C'),
       (7, 'Nicolas César Farias', '689.330.892-25', 'nicolascesarfarias__nicolascesarfarias@db4.com', '83984762910','Rua Jânio Lopes'),
       (8, 'Vitória Joana Peixoto', '107.827.938-19', 'vitoriajoanapeixoto-70@redacaofinal.com.br', '11985518314','Alameda das Serras'),
       (9, 'Bryan Calebe Diego', '875.494.708-12', 'bryancalebediegoassis_@alcastro.com', '55987323219','Rua Professora Hilda Naimayer Padula'),
       (10, 'Augusto Ruan Barbosa', '137.560.770-71', 'augustoruanbarbosa_@studiodeideias.com', '68982548839','Rua Almirante Barbosa');
#=================================================================
insert into Engenheiro (id_engenheiro, salario, area_atuacao)
values (1, 1000, 'Financeira'),
       (2, 6548.32, 'Lider de obra'),
       (3, 9875.65, 'Lider de obra'),
       (4, 4561.23, 'Materiais de construção'),
       (5, 3216.54, 'Saneamento'),
       (6, 1324.56, 'Terraplanagem'),
       (7, 9874.65, 'Geotecnia'),
       (8, 1023.35, 'Terraplanagem'),
       (9, 2136.36, 'Terraplanagem'),
       (10, 78951, 'Geotecnia');
#=================================================================
insert into Consultor (id_consultor, comissao)
values (1, 32),
       (2, 23),
       (3, 34),
       (4, 45),
       (5, 56),
       (6, 67),
       (7, 78),
       (8, 47),
       (9, 59),
       (10, 24);
#=================================================================
insert into Franquia (id_franquia, cnpj, razao_social, nome_fantasia)
values (1, '16.783.390/0001-53', 'Osvaldo e Ester Pães e Doces ME', 'Padaria OE'),
       (2, '40.530.654/0001-41', 'Antonella e Isabela Entulhos ME', 'Entulhos tope'),
       (3, 'Antonella e Isabela Entulhos ME', 'Agatha e Bruna Restaurante ME', 'Restaurante massa'),
       (4, '99.800.197/0001-00', 'Jéssica e Davi Limpeza Ltda', 'Limpeza limpa  '),
       (5, '38.054.796/0001-38', 'Juan e Rita Esportes ME', 'Esportes esportivos'),
       (6, '92.930.648/0001-85', 'Vitória e Melissa Contábil Ltda', 'Contadores de sonhos'),
       (7, '00.909.666/0001-67', 'Bernardo e Calebe Pizzaria Delivery ME', 'Delivery de entregas'),
       (8, '64.366.160/0001-31', 'Camila e Lúcia Doces & Salgados ME', 'Salgadinhos salgados'),
       (9, '54.966.073/0001-61', 'Laís e Bruna Eletrônica Ltda', 'Eletrônica super choque'),
       (10, '87.362.511/0001-31', 'Edson e Thiago Entregas Expressas Ltda', 'Entregas demoradas');
#=================================================================
insert into Franqueado (id_franqueado, id_franquia, cargo)
values (1, 1, 'Padeiro'),
       (2, 2, 'Lixeiro'),
       (3, 3, 'Cheff'),
       (4, 4, 'Passador de panos sujos'),
       (5, 5, 'Goleiro ruim'),
       (6, 6, 'Contador burro'),
       (7, 7, 'Comer pizzas'),
       (8, 8, 'FAzer salgados doces'),
       (9, 9, 'Jogador ruim profissional'),
       (10, 10, 'Perder encomendas');
#=================================================================
insert into Cliente (id_cliente, nome, email, telefone, endereco)
values (1, 'Felipe Mário Renato Nogueira', 'felipemariorenatonogueira__felipemariorenatonogueira@citi.com',
        '86991593416', 'Quadra D'),
       (2, 'Martin Danilo Matheus Duarte', 'martindanilomatheusduarte-89@prositeweb.com', '48983620397',
        'Rua Valentin Pizzetti'),
       (3, 'Yuri Luís Porto"', 'yuriluisporto..yuriluisporto@mailnull.com', '41984034293', 'Rua Costa Rica'),
       (4, 'Francisca Raimunda Elisa Duarte', 'ffranciscaraimundaelisaduarte@lojascentrodamoda.com.br', '47982580523',
        'Rua Antônia Alvina Zacarias'),
       (5, 'Murilo Levi Manuel Gomes', 'murilolevimanuelgomes-92@uel.br', '27994420717', 'Rua da Praia'),
       (6, 'Luciana Rebeca Peixoto"', 'llucianarebecapeixoto@cladm.com.br', '63998568876', 'Rua 35'),
       (7, 'Gabriela Márcia Catarina Rezende', 'ggabrielamarciacatarinarezende@catsfeelings.com.br', '47997755366',
        'Rua Marechal Deodoro 291'),
       (8, 'Vicente Martin Martins"', 'vicentemartinmartins_@aerobravo.com.br', '85982562603', 'Travessa João Pessoa'),
       (9, 'Marcela Vanessa da Rosa', 'marcelavanessadarosa__marcelavanessadarosa@igui.com.br', '74982699956',
        'Rua Dez de Julho'),
       (10, 'Caio Carlos Bernardo Corte', 'caiocarlosbernardocortereal-84@cpfl.com', '85997096304', 'Rua 14A');
#=================================================================
insert into Pessoa_f (id_cliente, cpf)
values (1, '434.826.533-05'),
       (2, '272.107.274-93'),
       (3, '917.647.944-78'),
       (4, '953.087.280-11'),
       (5, '973.888.023-80'),
       (6, '444.975.692-41'),
       (7, '707.365.142-36'),
       (8, '407.263.539-14'),
       (9, '885.348.052-10'),
       (10, '581.581.044-44');
#=================================================================
insert into Pessoa_j (id_cliente, cnpj)
values (1, '55.765.260/0001-40'),
       (2, '55.152.322/0001-48'),
       (3, '81.436.886/0001-12'),
       (4, '18.609.664/0001-18'),
       (5, '84.651.812/0001-97'),
       (6, '88.660.285/0001-38'),
       (7, '63.188.966/0001-14'),
       (8, '77.445.992/0001-95'),
       (9, '43.865.793/0001-14'),
       (10, '28.160.636/0001-10');
#=================================================================
insert into Produto (id_produto, nome_prod, modelo, potencia, preco)
values (1, 'Modulo', 321311, 64648, 654878),
       (2, 'Modulo1', 'SIW300H M020', 2, 24),
       (3, 'Modulo2', 'SIW300H M030 L1', 3, 21),
       (4, 'Modulo3', 'SIW300H M040 L1', 4, 321),
       (5, 'Modulo4', 'SIW300H M050 L1', 5, 532),
       (6, 'Modulo5', 'SIW500H ST012', 12, 124),
       (7, 'Inversor1', 'SIW500H ST015', 15, 54),
       (8, 'Inversor2', 'SIW500H ST020', 20, 87),
       (9, 'Inversor3', 'SIW500H ST030', 30, 321),
       (10, 'Inversor4', 'SIW500H ST040', 40, 564);
#=================================================================
insert into Concessionaria (id_concessionaria, razao_social, cnpj, estado)
values (1, 'Tereza e Fernando Esportes ME', '37.459.600/0001-22', 'SP'),
       (2, 'Francisco e Carlos Eduardo Buffet ME', '04.776.551/0001-00', 'SP'),
       (3, 'Lucas e Alessandra Lavanderia Ltda', '10.433.002/0001-28', 'SP'),
       (4, 'Kamilly e Stella Doces & Salgados Ltda', '06.507.031/0001-10', 'SP'),
       (5, 'Nina e Caleb Advocacia ME', '57.204.781/0001-53', 'SP'),
       (6, 'Lucca e Fernando Alimentos Ltda', '56.583.072/0001-63', 'SP'),
       (7, 'Bruna e Osvaldo Telecomunicações ME', '20.026.506/0001-87', 'SP'),
       (8, 'Brenda e Bruno Telecomunicações ME', '61.284.935/0001-31', 'SP'),
       (9, 'Tatiane e Luiza Construções Ltda', '60.684.696/0001-44', 'SP'),
       (10, 'Filipe e Maya Entulhos ME', '83.310.176/0001-77', 'SP');
#=================================================================
insert into Proposta (id_proposta, id_associado, id_cliente, id_concessionaria, id_engenheiro, valor_proposta,geracao_desejada, id_unidade_geradora, endereco_instalacao, consumo_medio, tarifa, data_analise,resultado, geracao_estimada)
values (1, 1, 1, 1, 1, 321, 123, 1, 'Rua A', 23, 0.36, '20200611', 0, 31),
       (2, 2, 2, 2, 2, 789, 342, 2, 'Rua Pedro Artur', 53, 0.82, '20200612', 1, 42),
       (3, 3, 3, 3, 3, 678, 235, 3, 'Parque Gavião', 23, 0.32, '20200613', 1, 53),
       (4, 4, 4, 4, 4, 567, 636, 4, 'Rua José Targino de Castro', 35, 0.32, '20200615', 0, 35),
       (5, 5, 5, 5, 5, 456, 132, 5, 'Rua Nelson de Azevedo Souza', 46, 0.62, '20200608', 1, 46),
       (6, 6, 6, 6, 6, 345, 243, 6, 'Rua C', 23, 0.34, '20200612', 0, 57),
       (7, 7, 7, 7, 7, 234, 35, 7, 'Rua Jânio Lopes', 12, 0.32, '20200613', 1, 24),
       (8, 8, 8, 8, 8, 321, 123, 8, 'Alameda das Serras', 63, 0.75, '20200618', 1, 35),
       (9, 9, 9, 9, 9, 321, 6323, 9, 'Rua Professora Hilda Naimayer Padula', 24, 0.52, '20200618', 0, 46),
       (10, 10, 10, 10, 10, 523, 654, 10, 'Rua Almirante Barbosa', 21, 0.32, '20200618', 0, 57);
#=================================================================
insert into Proposta_possui_Produto (id_proposta, id_produto, qntd)
values (1, 1, 12),
       (2, 2, 21),
       (3, 3, 23),
       (4, 4, 34),
       (5, 5, 12),
       (6, 6, 2),
       (7, 7, 5),
       (8, 8, 7),
       (9, 9, 24),
       (10, 10, 11);
#=================================================================
insert into Obra (data_inicial, id_proposta, prazo_estimado_dias, horas_trabalhadas)
values ('20201222', 1, 90, 800),
       ('20201213', 2, 60, 400),
       ('20201225', 3, 90, 700),
       ('20201202', 4, 20, 100),
       ('20201203', 5, 90, 300),
       ('20201204', 6, 120, 1000),
       ('20201205', 7, 65, 300),
       ('20201107', 8, 90, 700),
       ('20200702', 9, 23, 153),
       ('20200814', 10, 90, 659);
#=================================================================
insert into Engenheiro_coordena_Obra (id_engenheiro, data_inicial)
values (1, '20201222'),
       (2, '20201213'),
       (3, '20201225'),
       (4, '20201202'),
       (5, '20201203'),
       (6, '20201204'),
       (7, '20201205'),
       (8, '20201107'),
       (9, '20200702'),
       (10, '20200814');
#=================================================================
insert into Contrato (num_contrato, id_proposta, nota_fisca, valor_total, data_assinatura)
values (1, 1, '6346153412416', 65489.21, '20201222'),
       (2, 2, '31231235235`', 3123.21, '20201213'),
       (3, 3, '23123123351', 5235.21, '20201225'),
       (4, 4, '123123563462', 12315.21, '20201202'),
       (5, 5, '1245456346124', 2535235.21, '20201203'),
       (6, 6, '23423514124', 42346.21, '20201204'),
       (7, 7, '45745747', 52312.21, '20201205'),
       (8, 8, '34523424', 53453.21, '20201107'),
       (9, 9, '523452352313', 23426.21, '20200702'),
       (10, 10, '12313521', 53452.21, '20200814');
#=================================================================