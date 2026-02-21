-- ######################################################
-- PARTE 1: ÍNDICES
-- ######################################################

-- Qual o departamento com maior número de pessoas?
CREATE INDEX idx_employee_dno ON employee(Dno);

SELECT Dname, COUNT(*) as Total 
FROM department d 
JOIN employee e ON d.Dnumber = e.Dno 
GROUP BY Dname ORDER BY Total DESC LIMIT 1;

-- Quais são os departamentos por cidade?
CREATE INDEX idx_dept_location ON dept_locations(Llocation);

SELECT Dname, Llocation 
FROM department d 
JOIN dept_locations l ON d.Dnumber = l.Dnumber;

-- ######################################################
-- PARTE 2: PROCEDURES (Cenário E-commerce)
-- ######################################################

DELIMITER $$

CREATE PROCEDURE sp_ManageEcommerce(
    IN opcao INT,           -- 1: Insert, 2: Update, 3: Delete
    IN p_id INT,
    IN p_nome VARCHAR(50),
    IN p_valor DECIMAL(10,2)
)
BEGIN
    CASE opcao
        WHEN 1 THEN 
            INSERT INTO produto (id, nome, valor) VALUES (p_id, p_nome, p_valor);
        WHEN 2 THEN 
            UPDATE produto SET nome = p_nome, valor = p_valor WHERE id = p_id;
        WHEN 3 THEN 
            DELETE FROM produto WHERE id = p_id;
        ELSE 
            SELECT 'Ação Inválida' AS Erro;
    END CASE;
END $$

DELIMITER ;
