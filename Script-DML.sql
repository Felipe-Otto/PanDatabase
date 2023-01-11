-- The Interns
-- Felipe Otto da Silva......................89108
-- Pedro Argentati...........................88246
-- Pedro Henrique Castanheira................89199
-- Rafael Tannous............................87486
-- Yasmin Verderame..........................87023

-- INSERT INTO
-- TB_ESTADO
INSERT ALL
    INTO tb_estado VALUES('SP', 'S�o Paulo')
    INTO tb_estado VALUES('RJ', 'Rio De Janeiro')
    INTO tb_estado VALUES('MG', 'Minas Gerais')
    INTO tb_estado VALUES('RS', 'Rio Grande do Sul')
    INTO tb_estado VALUES('PR', 'Paran�')
    INTO tb_estado VALUES('SC', 'Santa Catarina')
    INTO tb_estado VALUES('BA', 'Bahia')
    INTO tb_estado VALUES('DF', 'Distrito Federal')
    INTO tb_estado VALUES('GO', 'Goi�s')
    INTO tb_estado VALUES('PE', 'Pernambuco')
SELECT * FROM dual;

-- TB_CIDADE
INSERT ALL
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('SP', 'S�o Paulo')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('SP', 'Campos do Jord�o')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('SP', 'Campinas')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('SP', 'Guarulhos')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('SP', 'Adamantina')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('RJ', 'Rio de Janeiro')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('RJ', 'Niter�i')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('RJ', 'Petr�polis')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('RJ', 'Nova Igua�u')
    INTO tb_cidade(sg_uf, nm_cidade) VALUES('RJ', 'Maca�')
SELECT * FROM dual;

-- TB_END_CLIENTE
INSERT ALL 
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 1, '02180-000', 428, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 3, '02762-060', 760, 'Apt. 076')
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 5, '08452-105', 491, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 2, '02316-200', 769, 'Apt. 895')
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 1, '08071-255', 847, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 6, '04756-050', 886, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 7, '08070-530', 408, 'Suite 151')
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 7, '05692-040', 510, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 6, '02473-060', 79, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 10, '08550-355', 86, 'Suite 475')
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 1, '03977-383', 791, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 1, '03367-045', 823, 'Apt. 314')
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 1, '05435-010', 343, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 4, '04741-160', 76, 'Apt. 317')
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('SP', 5, '04403-130', 855, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 6, '02223-160', 825, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 7, '08485-040', 270, ' Suite 638')
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 8, '04606-050', 822, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 9, '04475-100', 42, NULL)
    INTO tb_end_cliente(sg_uf, cd_cidade, cep_end_cli, nr_end_cli, comp_end_cli) VALUES('RJ', 10, '05372-080', 235, 'Suite 857')
SELECT * FROM dual;

-- TB_CLASSIFICACAO
INSERT ALL 
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo A')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo B')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo C')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo D')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo E')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo F')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo G')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo H')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Tipo I')
    INTO tb_classificacao(nm_classificacao) VALUES('Cliente Inativo')
SELECT * FROM dual;

-- TB_CLIENTE
INSERT ALL
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Mariane Teixeira', 'PF', '(51) 3816-7216', 'mafalda8@yahoo.com', 1, 4)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Samuel Costa', 'PF', '(83) 3916-7112', 'alfred_gaylord53@hotmail.com', 2, 5)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Davi Luiz Moraes', 'PF', '(61) 2184-1051', 'elta.spinka49@hotmail.com', 3, 6)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Joaquim Vieira', 'PF', '(65) 3601-7249', 'nyasia76@gmail.com', 4, 1)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Carlos Eduardo Jesus', 'PF', '(63) 3446-9581', 'rosa_schoen@yahoo.com', 5, 7)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Yuri Silveira', 'PF', '(79) 2445-3025', 'angel.stehr80@gmail.com', 6, 4)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Jo�o Pedro Arag�o', 'PF', '(97) 3177-3316', 'lupe_marquardt@hotmail.com', 7, 1)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Davi Luiz Rocha', 'PF', '(69) 2121-3422', 'joan.grant@hotmail.com', 8, 8)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Andr� Gon�alves', 'PF', '(66) 3603-6322', 'jerrold.kutch@gmail.com', 9, 4)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Melissa Ramos', 'PF', '(79) 3702-4517', 'kamryn77@yahoo.com', 10, 1)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Helo�sa Oliveira', 'PJ', '(68) 3688-6388', 'keven.conn19@gmail.com', 11, 5)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Arthur Jesus', 'PJ', '(33) 3153-5597', 'duncan.wunsch48@gmail.com',12, 2)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Marcela das Neves', 'PJ', '(24) 3435-7882', 'loraine.daugherty@yahoo.com', 13, 7)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Camila Gon�alves', 'PJ', '(28) 2763-9864', 'ollie.hamill@gmail.com', 14, 1)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Gabriela Farias', 'PJ', '(48) 3344-2088', 'moses_leffler@hotmail.com', 15, 4)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao) 
    VALUES('Samuel das Neves', 'PJ', '(61) 3077-5865', 'elroy.nader94@yahoo.com', 16, 6)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Joaquim Rocha', 'PJ', '(84) 2254-6795', 'dameon91@yahoo.com', 17, 3)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Jo�o Guilherme Duarte', 'PJ', '(51) 2651-6795', 'jack.stehr@hotmail.com', 18, 9)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Erick Costa', 'PJ', '(96) 2772-5454', 'roselyn_hessel70@yahoo.com', 19, 5)
    INTO tb_cliente(nm_cli, tp_cli, tel_cli, email_cli, cd_end_cli, cd_classificacao)
    VALUES('Joaquim da Concei��o', 'PJ', '(95) 2321-6676', 'piper.bailey26@hotmail.com', 20, 2)
SELECT * FROM dual;

-- TB_CLIENTE_PF
INSERT ALL
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(1, '152.183.447-45', '62.621.828-8', TO_DATE('30/11/1936','DD/MM/YYYY'), 'F')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(2, '775.448.242-84', '55.105.683-3', TO_DATE('22/04/1985','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(3, '719.261.168-95', '87.354.496-1', TO_DATE('08/12/1981','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(4, '558.610.853-40', '91.496.568-1', TO_DATE('10/09/1997','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(5, '882.167.980-24', '69.924.571-6', TO_DATE('14/04/1972','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(6, '540.296.248-04', '10.796.632-8', TO_DATE('15/02/1971','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(7, '177.091.658-00', '55.758.250-4', TO_DATE('25/07/1940','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(8, '467.004.063-40', '27.077.732-4', TO_DATE('10/08/1953','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(9, '147.770.070-65', '89.155.877-9', TO_DATE('15/09/1996','DD/MM/YYYY'), 'M')
    INTO tb_cliente_pf(id_cli, cpf_cli, rg_cli, dt_nscmt_cli, sexo_cli) 
    VALUES(10, '601.791.232-11', '90.845.838-2', TO_DATE('26/07/1963','DD/MM/YYYY'), 'F')
SELECT * FROM dual;

-- TB_CLIENTE_PJ
INSERT ALL
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(11, '50.338.260/0001-40', 'Northside Autom�veis', 'Autom�veis Ltda', TO_DATE('08/08/2003','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(12, '60.471.714/0001-00', 'Savant Marcenaria', 'Marcenaria Ltda', TO_DATE('26/04/2010','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(13, '66.277.145/0001-42', 'Envoy Cont�bil', 'Cont�bil ME', TO_DATE('02/06/2022','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(14, '58.285.543/0001-82', 'Fotografia Chaves', 'Fotografias ME', TO_DATE('16/05/2021','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(15, '64.255.873/0001-28', 'Inside Mudan�as', 'Mudan�as Ltda', TO_DATE('22/11/2007','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(16, '50.352.441/0001-20', 'Playtime', 'Cont�bil Ltda', TO_DATE('30/04/2008','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(17, '61.841.833/0001-70', 'Lanchonete Foundry', 'Restaurante Ltda', TO_DATE('08/04/2008','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(18, '23.548.162/0001-64', 'Groove Lavanderia', 'Lavanderia ME', TO_DATE('20/12/2004','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(19, '22.107.317/0001-64', 'Checkpoint J�ias', 'Joalheria Manu', TO_DATE('20/01/2017','DD/MM/YYYY'))
    INTO tb_cliente_pj(id_cli, cnpj, razao_social, nm_fantasia, dt_fundacao) 
    VALUES(20, '13.152.277/0001-81', 'Einstein Inform�tica', 'Inform�tica ME', TO_DATE('07/11/2018','DD/MM/YYYY'))
SELECT * FROM dual;

-- TB_TP_CONTA
INSERT ALL
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Dep�sito')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Pagamento')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Corrente')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Poupan�a')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Sal�rio')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Universit�ria')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Investimento')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Digital')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Conjunta')
    INTO tb_tp_conta(nm_tp_conta) VALUES('Conta Empres�rial')
SELECT * FROM dual;

-- TB_CONTA
INSERT ALL
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(1, '215714-4', 7, TO_DATE('01/01/2020','DD/MM/YYYY'), 57198.75)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(2, '118215-3', 8, TO_DATE('15/03/2020','DD/MM/YYYY'), 6778.50)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(3, '1761675-7', 7, TO_DATE('01/06/2020','DD/MM/YYYY'), 14830.55)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(4, '87057-7', 7, TO_DATE('15/09/2020','DD/MM/YYYY'), 39330.41)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(5, '0146970-3', 8, TO_DATE('01/01/2021','DD/MM/YYYY'), 12640.75)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(6, '0072229-4', 3, TO_DATE('15/03/2021','DD/MM/YYYY'), 1933.00)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(7, '0590217-7', 8, TO_DATE('01/06/2021','DD/MM/YYYY'), 13996.20)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(8, '30732-8', 1, TO_DATE('15/09/2021','DD/MM/YYYY'), 8442.64)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(9, '79497-1', 7, TO_DATE('01/01/2022','DD/MM/YYYY'), 47955.99)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(10, '1383523-3', 3, TO_DATE('15/03/2022','DD/MM/YYYY'), 2543.85)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(11, '80168-9', 10, TO_DATE('07/07/2006','DD/MM/YYYY'), 460036.00)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(12, '0484871-3', 10, TO_DATE('18/02/2006','DD/MM/YYYY'), 358958.35)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(13, '0824143-0', 10, TO_DATE('08/03/2017','DD/MM/YYYY'), 156346.25)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(14, '43340694-6', 10, TO_DATE('23/02/2014','DD/MM/YYYY'), 38902.44)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(15, '1174031-0', 10, TO_DATE('12/08/2010','DD/MM/YYYY'), 224505.15)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(16, '124183-4', 10, TO_DATE('08/06/2020','DD/MM/YYYY'), 373814.70)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(17, '75063-3', 10, TO_DATE('11/03/2021','DD/MM/YYYY'), 68052.80)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(18, '1073511-4', 10, TO_DATE('04/09/2008','DD/MM/YYYY'), 109542.10)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(19, '58259-6', 10, TO_DATE('17/02/2020','DD/MM/YYYY'), 357489.42)
    INTO tb_conta(id_cli, nr_conta, cd_tp_conta, dt_abertura_conta, saldo_conta) 
    VALUES(20, '1048804-4', 10, TO_DATE('24/12/2005','DD/MM/YYYY'), 28256.28)
SELECT * FROM dual;


-- TB_OPERACAO
INSERT ALL
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(15, 'AUT', TO_DATE('03/09/2022','DD/MM/YYYY'), 1085)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(2, 'AUT', TO_DATE('04/09/2022','DD/MM/YYYY'), 2128)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(10, 'AUT', TO_DATE('05/09/2022','DD/MM/YYYY'), 2044)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(7, 'AUT', TO_DATE('06/09/2022','DD/MM/YYYY'), 4628)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(4, 'AUT', TO_DATE('07/09/2022','DD/MM/YYYY'), 3126)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(5, 'AUT', TO_DATE('08/09/2022','DD/MM/YYYY'), 3638)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(9, 'AUT', TO_DATE('09/09/2022','DD/MM/YYYY'), 1767)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(6, 'AUT', TO_DATE('10/09/2022','DD/MM/YYYY'), 3926)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(5, 'AUT', TO_DATE('11/09/2022','DD/MM/YYYY'), 4961)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(3, 'AUT', TO_DATE('12/09/2022','DD/MM/YYYY'), 2418)   
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(19, 'SUP', TO_DATE('13/09/2022','DD/MM/YYYY'), 18295)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(18, 'SUP', TO_DATE('14/09/2022','DD/MM/YYYY'), 9902)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(11, 'SUP', TO_DATE('15/09/2022','DD/MM/YYYY'), 10578)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(19, 'SUP', TO_DATE('16/09/2022','DD/MM/YYYY'), 16870)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(15, 'SUP', TO_DATE('17/09/2022','DD/MM/YYYY'), 7100)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(12, 'SUP', TO_DATE('18/09/2022','DD/MM/YYYY'), 7529)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(13, 'SUP', TO_DATE('19/09/2022','DD/MM/YYYY'), 10350)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(15, 'SUP', TO_DATE('20/09/2022','DD/MM/YYYY'), 8350)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(11, 'SUP', TO_DATE('21/09/2022','DD/MM/YYYY'), 5162)
    INTO tb_operacao(id_cli, tp_op, dt_op, valor_operacao) 
    VALUES(17, 'SUP', TO_DATE('22/09/2022','DD/MM/YYYY'), 5480)
SELECT * FROM dual;

-- TB_TP_OP_AUTONOMA
INSERT ALL
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Transa��o')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Deposito')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Pix')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Compra Debito')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Compra Parcelada 1x-2x')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Compra Parcelada 3x-4x')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Compra Parcelada 4x-5x')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Compra Parcelada 6x-7x')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Compra Parcelada 7x-8x')
    INTO tb_tp_op_autonoma(nm_tp_op_autonoma) VALUES('Compra Parcelada 8x-10x')
SELECT * FROM dual;

-- TB_OP_AUTONOMA
INSERT ALL
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(1, 8)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(2, 9)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(3, 10)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(4, 1)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(5, 6)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(6, 3)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(7, 10)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(8, 5)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(9, 4)
    INTO tb_op_autonoma(cd_op, cd_tp_op_autonoma) VALUES(10, 3)
SELECT * FROM dual;

-- TB_TP_OP_SUPERVISIONADA
INSERT ALL
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 1')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 2')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 3')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 4')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 5')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 6')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 7')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 8')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 9')
    INTO tb_tp_op_supervisionada(nm_tp_op_supervisionada) VALUES ('Empr�stimo N�vel 10')
SELECT * FROM dual;

--TB_END_EMPREGADO
INSERT ALL 
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 1, '07210-360', 525, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 2, '13617-525', 947, 'Apt. 067')
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 3, '12333-130', 630, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 4, '12422-260', 871, 'Suite 986')
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 5, '08142-430', 514, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 6, '01414-020', 715, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 7, '01414-020', 552, 'Apt.287')
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 8, '03643-060', 597, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 9, '18605-508', 352, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 10, '13485-074', 95, 'Suite 039')
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 1, '09853-550', 1145, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 2, '15062-631', 597, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 3, '15085-440', 264, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 4, '09852-435', 1478, 'Apt.3 Bloco A')
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('SP', 5, '13302-231', 75, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 6, '06787-600', 481, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 7, '09843-070', 935, 'Apt.287')
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 8, '07769-065', 161, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 9, '12238-280', 890, NULL)
    INTO tb_end_empregado(sg_uf, cd_cidade, cep_end_emp, nr_end_emp, comp_end_emp) VALUES ('RJ', 10, '14407-592', 130, 'Suite 039')
SELECT * FROM dual;

--TB_END_AGENCIA
INSERT ALL 
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('SP', 1, '12423-060', 381, NULL)
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('SP', 2, '17035-730', 259, '4� Andar')
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('SP', 3, '13084-790', 653 , NULL)
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('SP', 4, '14811-135', 2505, '16� Andar')
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('SP', 5, '13087-300', 373, NULL)
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('RJ', 6, '17016-380', 880, NULL)
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('RJ', 7, '14409-242', 983, '15� Andar')
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('RJ', 8, '02759-020', 639, NULL)
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('RJ', 9, '11462-595', 44, NULL)
    INTO tb_end_agencia(sg_uf, cd_cidade, cep_end_ag, nr_end_ag, comp_end_ag) VALUES ('RJ', 10, '14085-569', 381, NULL)
SELECT * FROM dual;

-- TB_CARGO_EMPREGADO
INSERT ALL 
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Gerente')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Caixa')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Atendente comercial')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Agente comercial')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Assistente da ger�ncia')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Estagi�rio')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Limpeza')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Inform�tica')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Seguran�a')
    INTO tb_cargo_empregado(nm_cargo) VALUES ('Manuten��o')
SELECT * FROM dual;

-- TB_AGENCIA
INSERT ALL 
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento1@bancoX.com', 1)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento2@bancoX.com', 2)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento3@bancoX.com', 3)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento4@bancoX.com', 4)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento5@bancoX.com', 5)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento6@bancoX.com', 6)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento7@bancoX.com', 7)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento8@bancoX.com', 8)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento9@bancoX.com', 9)
    INTO tb_agencia(email_ag, cd_end_ag) VALUES ('atendimento10@bancoX.com', 10)
SELECT * FROM dual;

-- TB_TEL_AGENCIA
INSERT ALL 
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (1, '(11) 3794-4367')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (2, '(14) 3978-8114')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (3, '(15) 3955-7953')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (4, '(15) 3614-7312')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (5, '(16) 2673-6764')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (6, '(17) 2311-1108')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (7, '(11) 2330-8397')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (8, '(12) 2835-8931')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (9, '(19) 2439-1904')
    INTO tb_tel_agencia(cd_ag, tel_ag) VALUES (10, '(15) 2646-65660')
SELECT * FROM dual;

-- TB_EMPREGADO
INSERT ALL 
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Ot�vio Moura', 1, 2, '617.385.186-55', '26.409.433-5', TO_DATE('26/12/2008','DD/MM/YYYY'), 'M', 8750, 'jonathon51@gmail.com', 1)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Catarina Cardoso', 1, 8, '617.326.466-86', '17.674.016-8', TO_DATE('25/09/2014','DD/MM/YYYY'), 'F', 8750, 'miles_padberg88@hotmail.com', 2)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Maria Fernanda Farias', 1, 1, '375.322.434-00', '45.043.481-3', TO_DATE('20/06/2008','DD/MM/YYYY'), 'F', 8750, 'dillan_smitham91@gmail.com', 3)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Maria Clara da Cunha', 1, 10, '818.183.393-74', '26.918.386-3', TO_DATE('16/08/2007','DD/MM/YYYY'), 'F', 8750, 'virginia71@yahoo.com', 4)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Ana J�lia das Neves', 1, 6, '388.818.993-45', '33.638.571-7', TO_DATE('07/08/2008','DD/MM/YYYY'), 'F', 8750, 'brandt.wiegand@yahoo.com', 5)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Isabel Farias', 1, 7, '668.757.266-02', '39.781.788-3', TO_DATE('04/03/2020','DD/MM/YYYY'), 'F', 8750, 'yasmine.daugherty@yahoo.com', 6)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Caroline Cunha', 1, 5, '478.923.846-69', '28.162.558-2', TO_DATE('12/05/2009','DD/MM/YYYY'), 'F', 8750, 'jaylon_adams23@gmail.com', 7)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Pietra Correia', 1, 1, '437.044.387-31', '42.681.876-1', TO_DATE('17/02/2014','DD/MM/YYYY'), 'F', 8750, 'eliseo.gerhold@hotmail.com', 8)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Enzo Sales', 1, 2, '258.733.208-70', '40.327.022-6', TO_DATE('26/07/2008','DD/MM/YYYY'), 'M', 8750, 'jade99@yahoo.com', 9)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Larissa Foga�a', 1, 5, '375.923.566-27', '30.884.366-3', TO_DATE('27/10/2006','DD/MM/YYYY'), 'F', 8750, 'jarred.boyle@yahoo.com', 10)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Miguel Foga�a', 8, 8, '660.673.657-90', '47.046.374-0', TO_DATE('27/05/2017','DD/MM/YYYY'), 'M', 12500, 'rashawn.grant@yahoo.com', 11)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Gabrielly Cavalcanti', 3, 5, '427.263.276-05', '16.475.083-6', TO_DATE('12/05/2022','DD/MM/YYYY'), 'F', 5000, 'francesca39@hotmail.com', 12)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Manuela Nunes', 6, 6, '055.653.056-08', '37.798.984-8', TO_DATE('24/06/2008','DD/MM/YYYY'), 'F', 1200, 'laverne.king32@gmail.com', 13)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Ben�cio Castro', 7, 1, '376.154.677-72', '31.186.690-6', TO_DATE('22/03/2011','DD/MM/YYYY'), 'M', 2750, 'aileen_beahan21@yahoo.com', 14)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Elisa Nascimento', 3, 9, '955.949.445-75', '14.868.622-9', TO_DATE('24/09/2010','DD/MM/YYYY'), 'F', 3500, 'hosea_aufderhar@gmail.com', 15)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Juan Viana', 6, 4, '470.620.217-50', '43.348.984-6', TO_DATE('17/12/2013','DD/MM/YYYY'), 'M', 1200, 'alexandro.torphy58@yahoo.com', 16)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Yuri Nunes', 4, 6, '684.162.157-31', '39.658.458-3', TO_DATE('25/09/2011','DD/MM/YYYY'), 'M', 3000, 'enoch.olson@hotmail.com', 17)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Lucas Gabriel da Mota', 8, 8, '310.181.916-40', '21.467.888-0', TO_DATE('26/05/2016','DD/MM/YYYY'), 'M', 10000, 'krystina21@hotmail.com', 18)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Lara da Rocha', 2, 9, '205.487.613-53', '34.471.392-0', TO_DATE('06/06/2022','DD/MM/YYYY'), 'F', 2500, 'tiara18@hotmail.com', 19)
    INTO tb_empregado(nm_emp, cd_cargo, cd_ag, cpf_emp, rg_emp, dt_nscmt_emp, sexo_emp, salario_emp, email_emp, cd_end_emp) 
    VALUES('Henrique Silva', 10, 10, '306.971.068-96', '34.526.165-5', TO_DATE('19/02/2008','DD/MM/YYYY'), 'M', 2750, 'jany_steuber37@yahoo.com', 20)
SELECT * FROM dual;

-- TB_TEL_EMPREGADO
INSERT ALL 
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(1, '(11) 3173-6485')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(2, '(14) 2360-6377')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(3, '(15) 3026-0129')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(4, '(18) 2620-0576')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(5, '(12) 2102-5348')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(6, '(21) 3410-0902')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(7, '(21) 3477-1563')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(8, '(24) 2996-7930')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(9, '(22) 3726-2756')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(10, '(22) 3496-1773')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(11, '(14) 2121-4681')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(12, '(16) 3588-3451')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(13, '(15) 3348-0182')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(14, '(18) 3327-1770')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(15, '(14) 3124-8781')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(16, '(21) 2930-0332')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(17, '(24) 2122-9664')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(18, '(21) 2260-9983')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(19, '(22) 3223-3347')
    INTO tb_tel_empregado(id_emp, tel_emp) VALUES(20, '(22) 2116-4688')
SELECT * FROM dual;

-- TB_GERENTE
INSERT ALL
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(1, 1)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(2, 1)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(3, 2)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(4, 2)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(5, 1)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(6, 1)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(7, 1)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(8, 0)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(9, 0)
    INTO tb_gerente(id_gerente, qntd_operacao) VALUES(10, 1)
SELECT * FROM dual;

-- TB_OP_SUPERVISIONADA 
INSERT ALL
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(11, 7, 1)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(12, 4, 5)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(13, 5, 3)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(14, 6, 10)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(15, 4, 3)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(16, 4, 4)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(17, 5, 4)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(18, 4, 2)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(19, 2, 6)
    INTO tb_op_supervisionada(cd_op, cd_tp_op_supervisionada, id_gerente) VALUES(20, 2, 7)
SELECT * FROM dual;

-- COMMIT
COMMIT;