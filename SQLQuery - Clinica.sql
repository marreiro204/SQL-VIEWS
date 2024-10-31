
--1
CREATE VIEW vw_exemplo1 AS
SELECT
 Id_consulta,
 procedimento,
 MEDICOS.nome,
 MEDICOS.especialidade
FROM CONSULTAS
INNER JOIN MEDICOS ON MEDICOS.Cod_Medico = CONSULTAS.Cod_Medico


SELECT * FROM vw_exemplo1

-------------------------------------------------------------------------------------------

--2
CREATE VIEW vw_exemplo2 AS
SELECT 
	FUNCIONÁRIOS.nome,
	FUNCIONÁRIOS.email,
	ATENDENTE.endereço
FROM FUNCIONÁRIOS
LEFT JOIN ATENDENTE ON ATENDENTE.Cod_Atendente = FUNCIONÁRIOS.Cod_Funcionário


SELECT * FROM vw_exemplo2

-------------------------------------------------------------------------------------------

--3
CREATE VIEW vw_exemplo3 AS
SELECT 
	Id_consulta,
	PACIENTES.nome,
	Data, 
	procedimento,
	status_tratamento
FROM CONSULTAS
INNER JOIN PACIENTES ON CONSULTAS.cod_paciente = PACIENTES.cod_paciente

SELECT * FROM vw_exemplo3

--------------------------------------------------------------------------------------------
--4
CREATE VIEW V_Gender AS
SELECT nome
FROM PACIENTES
WHERE sexo = 'F'

UNION

SELECT
nome
FROM FUNCIONÁRIOS
WHERE genero = 'F'

CREATE UNIQUE CLUSTERED
INDEX V_WOMENID ON
pacientes(sexo)
-- Precisa de permissão para criar uma view indexada


SELECT * FROM V_Gender


