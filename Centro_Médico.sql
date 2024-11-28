-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 28/11/2024 às 02:00
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `centro_médico_normalizado`
--
DROP DATABASE IF EXISTS `centro_médico_normalizado`;
CREATE DATABASE IF NOT EXISTS `centro_médico_normalizado` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `centro_médico_normalizado`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato_paciente`
--

DROP TABLE IF EXISTS `contato_paciente`;
CREATE TABLE IF NOT EXISTS `contato_paciente` (
  `ID_Contato` int NOT NULL AUTO_INCREMENT,
  `Email` text,
  `Telefone_Fixo` varchar(8) DEFAULT NULL,
  `Telefone_Whatssap` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`ID_Contato`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tabela truncada antes do insert `contato_paciente`
--

TRUNCATE TABLE `contato_paciente`;
--
-- Despejando dados para a tabela `contato_paciente`
--

INSERT INTO `contato_paciente` (`ID_Contato`, `Email`, `Telefone_Fixo`, `Telefone_Whatssap`) VALUES
(1, 'ana.souza@email.com', '48392018', '19283746'),
(2, 'carlos.lima@email.com', '10398475', '47285930'),
(3, 'mariana.silva@email.com', '29384710', '34827364'),
(4, 'lucas.santos@email.com', '49382017', '65839274'),
(5, 'julia.pereira@email.com', '57483920', '83274619'),
(6, 'joao.alves@email.com', '20938476', '92037465'),
(7, 'larissa.rocha@email.com', '38475029', '58392074'),
(8, 'felipe.silva@email.com', '75638210', '27493501'),
(9, 'beatriz.ferreira@email.com', '65749283', '84756301'),
(10, 'eduardo.lima@email.com', '48273916', '98372450'),
(11, 'camila.santos@email.com', '92038471', '48392057'),
(12, 'thiago.costa@email.com', '27493865', '19384720'),
(13, 'fernanda.pires@email.com', '68294730', '20573914'),
(14, 'rafael.costa@email.com', '83957261', '47285039'),
(15, 'gabriela.rocha@email.com', '20834756', '83749501'),
(16, 'henrique.santos@email.com', '39018472', '58473019'),
(17, 'larissa.silva@email.com', '20394876', '57392018'),
(18, 'pedro.souza@email.com', '65928374', '20938476'),
(19, 'isabela.lima@email.com', '29384765', '17283640'),
(20, 'bruno.rocha@email.com', '57483921', '92038475');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereço_paciente`
--

DROP TABLE IF EXISTS `endereço_paciente`;
CREATE TABLE IF NOT EXISTS `endereço_paciente` (
  `ID_Endereço_Paciente` int NOT NULL AUTO_INCREMENT,
  `CEP` char(1) DEFAULT NULL,
  `Nome_Rua` varchar(255) DEFAULT NULL,
  `Num_Rua` varchar(255) DEFAULT NULL,
  `Complemento` varchar(255) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID_Endereço_Paciente`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tabela truncada antes do insert `endereço_paciente`
--

TRUNCATE TABLE `endereço_paciente`;
--
-- Despejando dados para a tabela `endereço_paciente`
--

INSERT INTO `endereço_paciente` (`ID_Endereço_Paciente`, `CEP`, `Nome_Rua`, `Num_Rua`, `Complemento`, `UF`) VALUES
(1, '1', 'Rua das Palmeiras', '221', 'Apto 302', 'SP'),
(2, '9', 'Avenida Brasil', '1089', 'Bloco B', 'RJ'),
(3, '2', 'Rua do Sol', '505', 'Casa 2', 'MG'),
(4, '3', 'Rua da Esperança', '303', 'Fundos', 'BA'),
(5, '7', 'Rua Floriano Peixoto', '107', 'Cômodo 5', 'PR'),
(6, '2', 'Rua dos Andradas', '220', 'Sala 12', 'RS'),
(7, '1', 'Rua São João', '501', 'Cobertura', 'SP'),
(8, '8', 'Rua das Acácias', '451', 'Casa 3', 'GO'),
(9, '7', 'Avenida das Nações', '432', 'Apartamento 2', 'PE'),
(10, '1', 'Rua do Comércio', '1010', 'Loja 7', 'ES'),
(11, '8', 'Rua do Porto', '150', 'Prédio 4', 'RJ'),
(12, '6', 'Rua dos Três Poderes', '705', 'Andar 3', 'DF'),
(13, '4', 'Avenida Paulista', '999', 'Escritório 10', 'SP'),
(14, '5', 'Rua da Saudade', '52', 'Casa 1', 'BA'),
(15, '6', 'Rua do Ouro', '345', 'Sótão', 'MG'),
(16, '3', 'Rua Bela Vista', '1000', 'Apartamento 5', 'CE'),
(17, '4', 'Rua das Flores', '700', 'Casa 10', 'RJ'),
(18, '8', 'Rua do Campo', '200', 'Galpão 3', 'SP'),
(19, '9', 'Rua Horizonte', '99', 'Prédio 2', 'RS'),
(20, '6', 'Rua do Bosque', '310', 'Apto 1', 'PR');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

DROP TABLE IF EXISTS `estoque`;
CREATE TABLE IF NOT EXISTS `estoque` (
  `ID_Estoque` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `Quantidade` int DEFAULT NULL,
  `Entrada` date DEFAULT NULL,
  `Saída` date DEFAULT NULL,
  PRIMARY KEY (`ID_Estoque`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Tabela truncada antes do insert `estoque`
--

TRUNCATE TABLE `estoque`;
--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`ID_Estoque`, `Nome`, `Quantidade`, `Entrada`, `Saída`) VALUES
(1, 'Paracetamol', 0, '2024-10-01', '2024-10-15'),
(2, 'Ibuprofeno', 200, '2024-10-05', '2024-10-20'),
(3, 'Amoxicilina', 50, '2024-10-10', '2024-10-25'),
(4, 'Dipirona', 150, '2024-10-12', '2024-10-18'),
(5, 'Losartana', 80, '2024-10-14', '2024-10-22'),
(6, 'Omeprazol', 120, '2024-10-16', '2024-10-23'),
(7, 'Clonazepam', 60, '2024-10-18', '2024-10-28'),
(8, 'Loratadina', 90, '2024-10-20', '2024-10-30'),
(9, 'Metformina', 200, '2024-10-22', '2024-10-28'),
(10, 'Aspirina', 130, '2024-10-25', '2024-10-29');

--
-- Acionadores `estoque`
--
DROP TRIGGER IF EXISTS `NotificarReposicaoEstoque`;
DELIMITER $$
CREATE TRIGGER `NotificarReposicaoEstoque` AFTER UPDATE ON `estoque` FOR EACH ROW BEGIN
    IF NEW.quantidade < 10 THEN
        INSERT INTO notificacoes (mensagem, data_notificacao)
        VALUES (
            CONCAT('Atenção: O estoque do medicamento ID ', NEW.usuario.id, ' está baixo.'),
            NOW()
        );
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `exames`
--

DROP TABLE IF EXISTS `exames`;
CREATE TABLE IF NOT EXISTS `exames` (
  `ID_Exames` int NOT NULL AUTO_INCREMENT,
  `Tipo_Exame` varchar(255) DEFAULT NULL,
  `Data_Exame` date DEFAULT NULL,
  `Descrição` text,
  `Horário_Início` timestamp NULL DEFAULT NULL,
  `Horario_Termino` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Exames`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tabela truncada antes do insert `exames`
--

TRUNCATE TABLE `exames`;
--
-- Despejando dados para a tabela `exames`
--

INSERT INTO `exames` (`ID_Exames`, `Tipo_Exame`, `Data_Exame`, `Descrição`, `Horário_Início`, `Horario_Termino`) VALUES
(1, 'Exame de Sangue', '2024-11-25', 'Coleta de amostra para análise de hematologia, glicose e colesterol.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Raio-X de Tórax', '2024-11-26', 'Exame de imagem para verificar condições pulmonares e cardíacas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Ultrassonografia Abdominal', '2024-11-27', 'Ultrassom para diagnóstico de problemas no fígado, pâncreas e rins.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Eletrocardiograma (ECG)', '2024-11-28', 'Exame para monitorar a atividade elétrica do coração e identificar irregularidades.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Tomografia Computadorizada (TC)', '2024-11-29', 'Exame de imagem detalhada para avaliação de órgãos internos e tecidos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Endoscopia Digestiva', '2024-12-01', 'Exame visual do esôfago, estômago e duodeno para diagnóstico de úlceras e refluxo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Ressonância Magnética (RM)', '2024-12-02', 'Exame de imagem para detectar problemas no cérebro, coluna vertebral e músculos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Teste de Esforço', '2024-12-03', 'Avaliação cardíaca sob esforço físico para diagnosticar doenças no coração.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Exame de Urina', '2024-12-04', 'Coleta de amostra para análise de função renal, infecções urinárias e outras condições.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Exame de Fezes', '2024-12-05', 'Análise das fezes para detectar infecções intestinais e outros distúrbios.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Colonoscopia', '2024-12-06', 'Exame visual do cólon para detectar câncer, pólipos e outras anomalias intestinais.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Densitometria Óssea', '2024-12-07', 'Exame para medir a densidade mineral óssea e diagnosticar osteoporose.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Exame de Audiometria', '2024-12-08', 'Teste para avaliar a capacidade auditiva e detectar problemas de audição.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Exame de Visão', '2024-12-09', 'Avaliação oftalmológica para diagnóstico de problemas visuais e doenças oculares.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Testes de Função Hepática', '2024-12-10', 'Exame de sangue para verificar a saúde do fígado e detectar possíveis doenças.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Exame de Papanicolau', '2024-12-11', 'Exame ginecológico para detectar células anormais no colo do útero.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Mamografia', '2024-12-12', 'Exame de imagem para detectar câncer de mama em estágios iniciais.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Exame de Prostata', '2024-12-13', 'Exame para detectar alterações na próstata, como câncer ou aumento benigno.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Biometria Hepática', '2024-12-14', 'Exame para avaliar a função do fígado por meio de diferentes biomarcadores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Exame de Função Renal', '2024-12-15', 'Exame de sangue e urina para avaliar a função dos rins e detectar doenças renais.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `histórico_médico_médico`
--

DROP TABLE IF EXISTS `histórico_médico_médico`;
CREATE TABLE IF NOT EXISTS `histórico_médico_médico` (
  `ID_Médico` int NOT NULL AUTO_INCREMENT,
  `Data_Atendimento` date DEFAULT NULL,
  `Descrição` varchar(255) DEFAULT NULL,
  KEY `ID_Médico` (`ID_Médico`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Tabela truncada antes do insert `histórico_médico_médico`
--

TRUNCATE TABLE `histórico_médico_médico`;
--
-- Despejando dados para a tabela `histórico_médico_médico`
--

INSERT INTO `histórico_médico_médico` (`ID_Médico`, `Data_Atendimento`, `Descrição`) VALUES
(1, '2024-11-15', 'Atendimento para controle de hipertensão.'),
(2, '2024-11-18', 'Consulta para acompanhamento de crescimento infantil.'),
(3, '2024-11-20', 'Exame neurológico para dor de cabeça crônica.'),
(4, '2024-11-14', 'Exame preventivo e consulta ginecológica.'),
(5, '2024-11-12', 'Tratamento de fratura do fêmur.'),
(6, '2024-11-17', 'Consulta para exames de vista e correção visual.'),
(7, '2024-11-19', 'Acompanhamento dermatológico para acne grave.'),
(8, '2024-11-16', 'Atendimento de suporte emocional e psicoterapia.'),
(9, '2024-11-13', 'Consulta para check-up geral e exames laboratoriais.'),
(10, '2024-11-22', 'Atendimento para controle de diabetes e orientação nutricional.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `histórico_médico_paciente`
--

DROP TABLE IF EXISTS `histórico_médico_paciente`;
CREATE TABLE IF NOT EXISTS `histórico_médico_paciente` (
  `ID_Histórico` int NOT NULL AUTO_INCREMENT,
  `Ultimo_Exame` date DEFAULT NULL,
  `Histórico_Doença` varchar(255) DEFAULT NULL,
  `Prescrições` varchar(255) DEFAULT NULL,
  `Observações` varchar(255) DEFAULT NULL,
  `Resultados` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Histórico`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tabela truncada antes do insert `histórico_médico_paciente`
--

TRUNCATE TABLE `histórico_médico_paciente`;
--
-- Despejando dados para a tabela `histórico_médico_paciente`
--

INSERT INTO `histórico_médico_paciente` (`ID_Histórico`, `Ultimo_Exame`, `Histórico_Doença`, `Prescrições`, `Observações`, `Resultados`) VALUES
(1, '2024-11-25', 'Paciente com histórico de hipertensão arterial e diabetes tipo 2.', 'Medicamento para controle da pressão arterial e insulina para controle glicêmico.', 'Paciente relatou dificuldade em controlar os níveis de glicose.', 'Pressão arterial 140/90, glicemia 160 mg/dL. Melhorar controle da alimentação e ajustar dosagem de insulina.'),
(2, '2024-11-26', 'Queixa de dores articulares nos joelhos e na coluna.', 'Anti-inflamatórios não esteroides (AINEs) e fisioterapia para reabilitação.', 'Paciente apresenta limitação de movimentos devido à dor.', 'Dor intensa nas articulações, com dificuldade para realizar movimentos simples.'),
(3, '2024-11-27', 'Histórico de asma, com episódios frequentes de falta de ar.', 'Inaladores de broncodilatadores e corticoides para controle de crises.', 'O paciente deve monitorar o uso do inalador com frequência e evitar fatores desencadeantes.', 'Boa resposta ao tratamento, sem sinais de crise asmática no momento da consulta.'),
(4, '2024-11-28', 'Histórico de infecção urinária recorrente.', 'Antibióticos e orientação sobre ingestão adequada de líquidos.', 'Recomendar mudança de hábitos para evitar infecções recorrentes, como higiene adequada e evacuação regular.', 'Sem sinais de infecção ativa no exame físico, mas a urina apresentou algumas células inflamadas.'),
(5, '2024-11-29', 'Paciente com histórico de obesidade e colesterol elevado.', 'Mudança na dieta, exercícios físicos e medicamentos para redução de colesterol.', 'Recomendar atividade física regular e acompanhamento nutricional.', 'Colesterol LDL 150 mg/dL, paciente ainda acima do peso ideal.'),
(6, '2024-12-01', 'Paciente com diagnóstico de câncer de mama, pós-operatório.', 'Quimioterapia e acompanhamento psicológico.', 'Paciente com sintomas de cansaço extremo, mas sem sinais de metástases.', 'Sem sinais de metástase local ou linfática, continuar monitoramento mensal.'),
(7, '2024-12-02', 'Histórico de depressão com episódios de ansiedade.', 'Antidepressivos e terapia cognitivo-comportamental.', 'A paciente relatou melhora no quadro de ansiedade, mas ainda com dificuldades no sono.', 'Paciente mais animada, com progressos no tratamento psicológico.'),
(8, '2024-12-03', 'Histórico de refluxo gastroesofágico (DRGE).', 'Antiácidos e medicamentos para controle da acidez estomacal.', 'Recomendar evitar refeições pesadas à noite e manter a postura durante o sono.', 'Paciente relata melhora nos sintomas após a mudança de dieta.'),
(9, '2024-12-04', 'Paciente com histórico de insônia e distúrbios no sono.', 'Medicação para indução ao sono e técnicas de relaxamento.', 'Orientações sobre higiene do sono, evitar cafeína e atividades estimulantes antes de dormir.', 'Melhora no padrão de sono após o início do tratamento medicamentoso.'),
(10, '2024-12-05', 'Histórico de dor crônica nas costas.', 'Fisioterapia, analgésicos e orientações posturais.', 'Paciente apresenta melhora parcial, mas ainda com episódios agudos de dor.', 'Dor nas costas aliviada após sessões de fisioterapia, mas com necessidade de acompanhamento contínuo.'),
(11, '2024-12-06', 'Paciente com histórico de dislipidemia e histórico familiar de AVC.', 'Medicamentos para controle do colesterol e monitoramento da pressão arterial.', 'Recomendar aumento da ingestão de fibras e redução do consumo de gordura saturada.', 'Colesterol total 250 mg/dL, pressão arterial 130/85, continuar monitoramento.'),
(12, '2024-12-07', 'Queixa de dor abdominal crônica e episódios de náusea.', 'Exames laboratoriais para investigação e medicamentos para controle da dor.', 'Paciente deverá evitar alimentos gordurosos e condimentados para reduzir os episódios de dor.', 'Dor abdominal intermitente, exames laboratoriais ainda em análise.'),
(13, '2024-12-08', 'Histórico de histórico de cefaleias (dores de cabeça) frequentes.', 'Analgésicos e medicamentos preventivos para enxaqueca.', 'Recomendar controle do estresse e evitar gatilhos como luz intensa e barulho.', 'Cefaleia diminuída após tratamento, mas com episódios ocasionais.'),
(14, '2024-12-09', 'Diagnóstico de hipertireoidismo.', 'Medicamentos para controle hormonal e monitoramento da função tireoidiana.', 'Recomendar acompanhamento endócrino regular para ajustar a medicação.', 'Níveis de TSH abaixo do normal, ajustar medicação para controle adequado.'),
(15, '2024-12-10', 'Queixa de tosse persistente e dificuldade respiratória.', 'Antibióticos e broncodilatadores.', 'Paciente deve continuar com medicação e monitorar sintomas respiratórios.', 'Tosse persistente, mas sem sinais de infecção. Aguardar evolução.'),
(16, '2024-12-11', 'Histórico de úlcera gástrica.', 'Medicamentos para reduzir a acidez gástrica e dieta apropriada.', 'Evitar alimentos irritantes como pimentas e bebidas alcoólicas.', 'Úlcera em fase de cicatrização, paciente sem sinais de complicações.'),
(17, '2024-12-12', 'Paciente com histórico de fibromialgia.', 'Analgesia, antidepressivos e fisioterapia para controle da dor.', 'Recomendar técnicas de relaxamento como yoga e alongamento.', 'Dor generalizada aliviada com o tratamento, mas com episódios esporádicos.'),
(18, '2024-12-13', 'Histórico de artrite reumatoide.', 'Medicamentos antirreumáticos e fisioterapia para manutenção de movimento.', 'Paciente tem dificuldade de realizar atividades cotidianas devido à dor nas articulações.', 'Dor articular controlada, mas função limitada nas articulações dos joelhos.'),
(19, '2024-12-14', 'Diagnóstico de insuficiência renal crônica.', 'Medicamentos para controle da função renal e acompanhamento médico regular.', 'Ajuste na alimentação e aumento da ingestão de líquidos.', 'Função renal estabilizada, mas com necessidade de diálise em estágio avançado.'),
(20, '2024-12-15', 'Paciente com histórico de doenças cardíacas e infarto recente.', 'Medicamentos anticoagulantes e medicamentos para controle da pressão arterial.', 'Recomendar mudança no estilo de vida, com foco em alimentação saudável e exercícios físicos.', 'Sem novos episódios cardíacos, mas risco cardiovascular elevado.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `log_acessos`
--

DROP TABLE IF EXISTS `log_acessos`;
CREATE TABLE IF NOT EXISTS `log_acessos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `acao` varchar(100) DEFAULT NULL,
  `data_hora` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tabela truncada antes do insert `log_acessos`
--

TRUNCATE TABLE `log_acessos`;
-- --------------------------------------------------------

--
-- Estrutura para tabela `medicamentos_estoque`
--

DROP TABLE IF EXISTS `medicamentos_estoque`;
CREATE TABLE IF NOT EXISTS `medicamentos_estoque` (
  `ID_Medicamento` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `Descrição` varchar(255) DEFAULT NULL,
  `Dosagem` varchar(255) DEFAULT NULL,
  `Frequência` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Medicamento`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Tabela truncada antes do insert `medicamentos_estoque`
--

TRUNCATE TABLE `medicamentos_estoque`;
--
-- Despejando dados para a tabela `medicamentos_estoque`
--

INSERT INTO `medicamentos_estoque` (`ID_Medicamento`, `Nome`, `Descrição`, `Dosagem`, `Frequência`) VALUES
(1, 'Paracetamol', 'Usado para aliviar dores leves a moderadas e febre.', '500mg', 'A cada 6 horas'),
(2, 'Ibuprofeno', 'Anti-inflamatório utilizado para dor e febre.', '200mg', 'A cada 8 horas'),
(3, 'Amoxicilina', 'Antibiótico utilizado no tratamento de infecções bacterianas.', '500mg', 'A cada 12 horas'),
(4, 'Dipirona', 'Medicamento utilizado para dor e febre, tem efeito analgésico e antipirético.', '1g', 'A cada 6 horas'),
(5, 'Losartana', 'Medicamento utilizado para tratar hipertensão e insuficiência cardíaca.', '50mg', 'Uma vez por dia'),
(6, 'Omeprazol', 'Medicamento utilizado para o tratamento de refluxo gástrico e úlceras.', '20mg', 'Uma vez por dia'),
(7, 'Clonazepam', 'Usado para tratar distúrbios de ansiedade e epilepsia.', '2mg', 'A cada 12 horas'),
(8, 'Loratadina', 'Antialérgico utilizado para tratar rinite alérgica e urticária.', '10mg', 'Uma vez por dia'),
(9, 'Metformina', 'Usado no tratamento de diabetes tipo 2 para controlar níveis de glicose.', '500mg', 'A cada 12 horas'),
(10, 'Aspirina', 'Usada para dor, febre e como anti-inflamatório, também para prevenção de infarto.', '100mg', 'A cada 8 horas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `médico`
--

DROP TABLE IF EXISTS `médico`;
CREATE TABLE IF NOT EXISTS `médico` (
  `ID_Médico` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `Especialidade` varchar(255) DEFAULT NULL,
  `Disponibilidade` varchar(255) DEFAULT NULL,
  `estado` enum('Ativo','Inativo') DEFAULT NULL,
  PRIMARY KEY (`ID_Médico`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Tabela truncada antes do insert `médico`
--

TRUNCATE TABLE `médico`;
--
-- Despejando dados para a tabela `médico`
--

INSERT INTO `médico` (`ID_Médico`, `Nome`, `Especialidade`, `Disponibilidade`, `estado`) VALUES
(1, 'Dr. João Silva', 'Cardiologista', 'Segunda a sexta, 08:00 - 17:00', 'Ativo'),
(2, 'Dra. Ana Souza', 'Pediatra', 'Segunda a quinta, 09:00 - 16:00', 'Ativo'),
(3, 'Dr. Carlos Pereira', 'Neurologista', 'Segunda a sexta, 10:00 - 18:00', 'Inativo'),
(4, 'Dra. Mariana Lima', 'Ginecologista', 'Segunda a sexta, 08:00 - 14:00', 'Ativo'),
(5, 'Dr. Roberto Almeida', 'Ortopedista', 'Segunda a sexta, 08:00 - 18:00', 'Ativo'),
(6, 'Dra. Paula Martins', 'Oftalmologista', 'Segunda a quinta, 07:30 - 16:30', 'Inativo'),
(7, 'Dr. Marcos Oliveira', 'Dermatologista', 'Terça a sexta, 09:00 - 17:00', 'Inativo'),
(8, 'Dra. Isabel Costa', 'Psiquiatra', 'Segunda a sexta, 08:00 - 15:00', 'Ativo'),
(9, 'Dr. Felipe Santos', 'Clínico Geral', 'Segunda a sexta, 07:30 - 16:30', 'Inativo'),
(10, 'Dra. Juliana Rocha', 'Endocrinologista', 'Segunda a quinta, 09:00 - 17:00', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes` (
  `ID_Paciente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `CPF` int DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  PRIMARY KEY (`ID_Paciente`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tabela truncada antes do insert `pacientes`
--

TRUNCATE TABLE `pacientes`;
--
-- Despejando dados para a tabela `pacientes`
--

INSERT INTO `pacientes` (`ID_Paciente`, `Nome`, `CPF`, `DataNascimento`) VALUES
(2, 'Ana Carolina Souza', 2147483647, '1985-03-12'),
(3, 'Carlos Eduardo Lima', 2147483127, '1992-07-23'),
(4, 'Mariana Costa Silva', 2147483647, '1990-11-02'),
(5, 'Lucas Gabriel Santos', 1423423425, '1988-06-19'),
(6, 'Julia Beatriz Pereira', 2147483647, '1995-09-15'),
(7, 'João Pedro Alves', 2147431647, '1982-01-05'),
(8, 'Larissa Martins Rocha', 2121452523, '1993-04-27'),
(9, 'Felipe Augusto Silva', 2147483647, '1987-12-08'),
(10, 'Beatriz Souza Ferreira', 2147483647, '1994-05-14'),
(11, 'Eduardo Henrique Lima', 2147483647, '1991-02-22'),
(12, 'Camila Oliveira Santos', 2147483647, '1989-09-11'),
(13, 'Thiago Rodrigues Costa', 2147483647, '1986-10-30'),
(14, 'Fernanda Ribeiro Pires', 1212111111, '1992-03-01'),
(15, 'Rafael Martins Costa', 2147483647, '1990-08-17'),
(16, 'Gabriela Lima Rocha', 2147483647, '1994-07-25'),
(17, 'Henrique Pereira Santos', 2112333647, '1983-12-21'),
(18, 'Larissa Gomes Silva', 2147483647, '1991-06-06'),
(19, 'Pedro Henrique Souza', 2147483647, '1984-01-17'),
(20, 'Isabela Rodrigues Lima', 2147483647, '1993-09-03');

--
-- Acionadores `pacientes`
--
DROP TRIGGER IF EXISTS `LogAcessoPaciente`;
DELIMITER $$
CREATE TRIGGER `LogAcessoPaciente` AFTER INSERT ON `pacientes` FOR EACH ROW BEGIN
    INSERT INTO log_acessos (usuario, acao)
    VALUES (USER(), CONCAT('Consulta ao paciente ID ', NEW.usuario.id));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `pacientesanonimizados`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `pacientesanonimizados`;
CREATE TABLE IF NOT EXISTS `pacientesanonimizados` (
`CPFAnonimizado` varchar(8)
,`DataNascimento` date
,`ID_Paciente` int
,`NomeAnonimizado` varchar(7)
,`TelefoneAnonimizado` varchar(6)
);

-- --------------------------------------------------------

--
-- Estrutura para view `pacientesanonimizados`
--
DROP TABLE IF EXISTS `pacientesanonimizados`;

DROP VIEW IF EXISTS `pacientesanonimizados`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pacientesanonimizados`  AS SELECT `pacientes`.`ID_Paciente` AS `ID_Paciente`, concat(substr(`pacientes`.`Nome`,1,2),'*****') AS `NomeAnonimizado`, concat(substr(`pacientes`.`CPF`,1,3),'*****') AS `CPFAnonimizado`, `pacientes`.`DataNascimento` AS `DataNascimento`, '******' AS `TelefoneAnonimizado` FROM `pacientes` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Procedimentos
--
DELIMITER $$
DROP PROCEDURE IF EXISTS `AtualizarEstoque`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AtualizarEstoque` (IN `p_ID_Estoque` INT, IN `p_Quantidade` INT)   BEGIN
    DECLARE Estoque_Atual INT;  -- Declara a variável para armazenar a quantidade atual do estoque

    -- Obtém a quantidade atual do estoque
    SELECT Quantidade
    INTO Estoque_Atual
    FROM estoque
    WHERE ID_Estoque = p_ID_Estoque;

    -- Verifica se o estoque é suficiente
    IF Estoque_Atual < p_Quantidade THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Estoque insuficiente para o procedimento';  -- Caso o estoque seja insuficiente
    ELSE 
        -- Atualiza o estoque subtraindo a quantidade fornecida
        UPDATE estoque
        SET Quantidade = Estoque_Atual - p_Quantidade  -- Subtrai a quantidade do estoque atual
        WHERE ID_Estoque = p_ID_Estoque;  -- Atualiza o estoque correto
    END IF;
END$$

DROP PROCEDURE IF EXISTS `MostraEstoque`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostraEstoque` (IN `ID_Estoque` INT)   BEGIN
    SELECT 
        estoque.Nome,
        estoque.Quantidade,
        m.Descrição
    FROM estoque
    INNER JOIN medicamentos_estoque m ON estoque.ID_Estoque = m.ID_Medicamento
    WHERE m.ID_Medicamento = ID_Estoque
    ORDER BY m.Nome;
END$$

DROP PROCEDURE IF EXISTS `MostraMédicos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostraMédicos` ()   BEGIN
	select médico.nome, médico.especialidade, médico.disponibilidade, médico.estado
	from médico
	order by médico.estado;
END$$

DROP PROCEDURE IF EXISTS `MostraPacientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostraPacientes` ()   BEGIN
	SELECT 
    pacientes.Nome, 
    pacientes.ID_Paciente,
    h.Histórico_Doença,
    h.Ultimo_Exame,
    h.Prescrições,
    h.Observações,
    h.Resultados
FROM pacientes
LEFT JOIN histórico_médico_paciente AS h 
    ON h.ID_Histórico = pacientes.ID_Paciente
ORDER BY pacientes.Nome;
END$$

DELIMITER ;

-- --------------------------------------------------------