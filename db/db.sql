-- Define a codificação da sessão para UTF-8
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;
SET collation_connection = 'utf8mb4_0900_ai_ci';

-- Garante que o banco de dados está no charset correto
CREATE DATABASE IF NOT EXISTS empresas 
    DEFAULT CHARACTER SET utf8mb4 
    COLLATE utf8mb4_0900_ai_ci;

USE empresas;

-- Garante que todas as tabelas serão criadas com UTF-8
DROP TABLE IF EXISTS rfb_cnae;
CREATE TABLE IF NOT EXISTS rfb_cnae (
    codigo VARCHAR(10) PRIMARY KEY,
    descricao VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS rfb_motivos;
CREATE TABLE IF NOT EXISTS rfb_motivos (
    codigo VARCHAR(10) PRIMARY KEY,
    descricao VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS rfb_municipios;
CREATE TABLE IF NOT EXISTS rfb_municipios (
    codigo VARCHAR(10) PRIMARY KEY,
    descricao VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS rfb_natureza;
CREATE TABLE IF NOT EXISTS rfb_natureza (
    codigo VARCHAR(10) PRIMARY KEY,
    descricao VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS rfb_qualificacao;
CREATE TABLE IF NOT EXISTS rfb_qualificacao (
    codigo VARCHAR(10) PRIMARY KEY,
    descricao VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS rfb_cnpj_basico;
CREATE TABLE IF NOT EXISTS rfb_cnpj_basico (
    cnpj_basico VARCHAR(8) PRIMARY KEY,
    razao_social VARCHAR(255),
    natureza_juridica VARCHAR(10),
    qualificacao_responsavel VARCHAR(10),
    capital_social DECIMAL(15,2),
    porte_empresa VARCHAR(10),
    ente_federativo_resp VARCHAR(10)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS rfb_estabelecimentos;
CREATE TABLE IF NOT EXISTS rfb_estabelecimentos (
    cnpj_ordem VARCHAR(4),
    cnpj_dv VARCHAR(2),
    identificador_matriz_filial VARCHAR(1),
    nome_fantasia VARCHAR(255),
    situacao_cadastral VARCHAR(2),
    data_situacao_cadastral DATE,
    motivo_situacao_cadastra VARCHAR(2),
    nome_cidade_exterior VARCHAR(255),
    pais VARCHAR(3),
    data_inicio_atividade DATE,
    cnae_fiscal_principal VARCHAR(10),
    cnae_fiscal_secundaria VARCHAR(10),
    tipo_logradouro VARCHAR(10),
    logradouro VARCHAR(255),
    numero VARCHAR(10),
    complemento VARCHAR(255),
    bairro VARCHAR(255),
    cep VARCHAR(8),
    uf VARCHAR(2),
    municipio VARCHAR(10),
    ddd1 VARCHAR(3),
    telefone1 VARCHAR(10),
    ddd2 VARCHAR(3),
    telefone2 VARCHAR(10),
    ddd_fax VARCHAR(3),
    fax VARCHAR(10),
    correio_eletronico VARCHAR(255),
    situacao_especial VARCHAR(255),
    data_situacao_especial DATE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

INSERT INTO rfb_cnae (codigo, descricao) VALUES 
('6204', 'Treinamento em Tecnologia da Informação'),
('6205', 'Processamento de Dados'),
('6311', 'Portais, Provedores de Conteúdo e Outros Serviços de Informação na Internet'),
('6312', 'Hospedagem de Sites e Serviços de Aplicação na Internet'),
('6399', 'Outras Atividades de Prestação de Serviços de Informação'),
('5821', 'Edição de Softwares Customizáveis'),
('5829', 'Edição de Softwares Não-Customizáveis'),
('4742', 'Comércio de Equipamentos de Informática'),
('9511', 'Reparo e Manutenção de Computadores'),
('9512', 'Reparo e Manutenção de Equipamentos de Comunicação');

INSERT INTO rfb_motivos (codigo, descricao) VALUES 
('04', 'Fusão'),
('05', 'Cisão'),
('06', 'Mudança de Endereço'),
('07', 'Falência'),
('08', 'Inatividade'),
('09', 'Regularização'),
('10', 'Transferência de Titularidade'),
('11', 'Transformação Jurídica'),
('12', 'Recuperação Judicial'),
('13', 'Outros');

INSERT INTO rfb_municipios (codigo, descricao) VALUES 
('5208707', 'Goiânia'),
('2927408', 'Salvador'),
('2304400', 'Fortaleza'),
('1302603', 'Manaus'),
('2611606', 'Recife'),
('2111300', 'São Luís'),
('1501402', 'Belém'),
('2507507', 'João Pessoa'),
('2800308', 'Aracaju'),
('5002704', 'Campo Grande');

INSERT INTO rfb_natureza (codigo, descricao) VALUES 
('2062', 'Cooperativa'),
('2135', 'Associação Privada'),
('2143', 'Fundação Privada'),
('2150', 'Organização Religiosa'),
('3999', 'Outras Formas de Associação'),
('2305', 'Sociedade Simples Limitada'),
('2338', 'Empresário Individual'),
('3990', 'Consórcio de Empresas'),
('2300', 'Empresa Pública'),
('2370', 'Sociedade de Economia Mista');

INSERT INTO rfb_qualificacao (codigo, descricao) VALUES 
('32', 'Sócio'),
('34', 'Acionista'),
('43', 'Procurador'),
('49', 'Diretor Executivo'),
('51', 'Técnico Responsável'),
('60', 'Curador'),
('65', 'Representante Legal'),
('73', 'Gestor'),
('85', 'Administrador Judicial'),
('99', 'Outros');

INSERT INTO rfb_cnpj_basico (cnpj_basico, razao_social, natureza_juridica, qualificacao_responsavel, capital_social, porte_empresa, ente_federativo_resp) VALUES 
('12131415', 'TechHub Soluções Digitais Ltda', '2032', '05', 600000.00, 'MPE', NULL),
('14151617', 'InfoTech Consultoria Empresarial SA', '2038', '16', 2500000.00, 'EPP', NULL),
('16171819', 'Smart Systems Tecnologia Ltda', '2054', '22', 480000.00, 'ME', NULL),
('17181920', 'Nuvem Segura Hosting Ltda', '2032', '05', 950000.00, 'EPP', NULL),
('18192021', 'WebSolutions Agência Digital', '2062', '43', 670000.00, 'ME', NULL),
('19202122', 'NextGen Softwares e Soluções', '2143', '60', 1300000.00, 'EPP', NULL),
('20212223', 'CloudData Infraestrutura Ltda', '2338', '85', 550000.00, 'ME', NULL),
('21222324', 'Segurança Online CyberTech', '3999', '49', 1120000.00, 'MPE', NULL),
('22232425', 'E-Commerce Brasil Tecnologia SA', '2370', '73', 2800000.00, 'EPP', NULL),
('23242526', 'ByteCloud Data Centers', '2305', '32', 3200000.00, 'EPP', NULL);

INSERT INTO rfb_estabelecimentos (cnpj_ordem, cnpj_dv, identificador_matriz_filial, nome_fantasia, situacao_cadastral, data_situacao_cadastral, motivo_situacao_cadastra, nome_cidade_exterior, pais, data_inicio_atividade, cnae_fiscal_principal, cnae_fiscal_secundaria, tipo_logradouro, logradouro, numero, complemento, bairro, cep, uf, municipio, ddd1, telefone1, ddd2, telefone2, ddd_fax, fax, correio_eletronico, situacao_especial, data_situacao_especial) VALUES 
('0007', '06', '1', 'TechHub Digital', '02', '2023-07-10', '04', NULL, 'BRA', '2021-06-01', '6201', '6205', 'RUA', 'Rua XV de Novembro', '1200', 'Sala 3', 'Centro', '80020010', 'PR', '4106902', '41', '984567890', NULL, NULL, NULL, NULL, 'contato@techhub.com.br', NULL, NULL),
('0008', '07', '2', 'InfoTech Soluções', '02', '2023-08-15', '06', NULL, 'BRA', '2019-10-05', '6311', '6312', 'AV', 'Avenida Getúlio Vargas', '700', 'Andar 2', 'Savassi', '30112000', 'MG', '3106200', '31', '987654321', NULL, NULL, NULL, NULL, 'suporte@infotech.com.br', NULL, NULL),
('0009', '08', '1', 'Smart Systems Labs', '02', '2022-11-20', '09', NULL, 'BRA', '2020-03-15', '5821', '5829', 'RUA', 'Rua da Consolação', '450', 'Bloco A', 'Centro', '01301900', 'SP', '3550308', '11', '982345678', NULL, NULL, NULL, NULL, 'labs@smartsystems.com.br', NULL, NULL),
('0010', '09', '1', 'Nuvem Segura Data', '02', '2022-05-25', '08', NULL, 'BRA', '2018-12-30', '6312', '6203', 'RUA', 'Avenida Beira-Mar', '3200', 'Sala 505', 'Meireles', '60165000', 'CE', '2304400', '85', '988765432', NULL, NULL, NULL, NULL, 'info@nuvemsegura.com.br', NULL, NULL),
('0011', '10', '2', 'WebSolutions Design', '02', '2023-03-12', '09', NULL, 'BRA', '2020-07-15', '6204', '6399', 'AV', 'Avenida Paulista', '1500', 'Conj. 301', 'Bela Vista', '01311100', 'SP', '3550308', '11', '983456789', NULL, NULL, NULL, NULL, 'vendas@websolutions.com.br', NULL, NULL),
('0012', '11', '2', 'NextGen Software', '02', '2023-04-10', '07', NULL, 'BRA', '2019-01-12', '5821', '6311', 'RUA', 'Rua dos Andradas', '890', 'Andar 4', 'Centro', '90020000', 'RS', '4314902', '51', '986543210', NULL, NULL, NULL, NULL, 'info@nextgensoft.com.br', NULL, NULL),
('0013', '12', '1', 'CloudData Infra', '02', '2022-09-14', '05', NULL, 'BRA', '2018-03-22', '6312', '6202', 'AV', 'Avenida Brasil', '2100', 'Bloco B', 'Jardim América', '01430100', 'SP', '3550308', '11', '987654321', NULL, NULL, NULL, NULL, 'suporte@clouddata.com.br', NULL, NULL),
('0014', '13', '2', 'Segurança Online', '02', '2023-01-18', '10', NULL, 'BRA', '2020-09-05', '6203', '6201', 'RUA', 'Rua do Comércio', '350', 'Sobreloja', 'Centro', '40010000', 'BA', '2927408', '71', '985432109', NULL, NULL, NULL, NULL, 'suporte@segonline.com.br', NULL, NULL),
('0015', '14', '1', 'E-Commerce Brasil', '02', '2022-12-01', '12', NULL, 'BRA', '2019-11-25', '6311', '6312', 'AV', 'Avenida das Nações Unidas', '4500', 'Sala 808', 'Brooklin', '04570000', 'SP', '3550308', '11', '981234567', NULL, NULL, NULL, NULL, 'contato@ecommercebr.com.br', NULL, NULL),
('0016', '15', '2', 'ByteCloud Tech', '02', '2023-06-05', '13', NULL, 'BRA', '2021-05-10', '6202', '6205', 'RUA', 'Rua da Praia', '600', 'Loja 1', 'Centro', '90010000', 'RS', '4314902', '51', '987654321', NULL, NULL, NULL, NULL, 'info@bytecloud.com.br', NULL, NULL);