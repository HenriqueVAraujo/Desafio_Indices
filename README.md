# Desafio de Projeto: Índices e Procedures no MySQL

Este repositório contém a resolução do desafio focado em otimização e automação de banco de dados.

## Parte 1: Otimização com Índices
Os índices foram criados para o cenário `Company` visando melhorar a performance de buscas complexas.

### Motivações:
1. **idx_employee_dno**: Criado na tabela `employee(Dno)`. Motivo: Melhora a performance de JOINs com a tabela de departamentos. É um índice B-Tree, eficiente para buscas de igualdade.
2. **idx_location_city**: Criado em `dept_locations(Llocation)`. Motivo: Otimiza a filtragem de departamentos por cidade, reduzindo o tempo de varredura.

## Parte 2: Procedures para CRUD Dinâmico
Foi desenvolvida uma procedure que centraliza as operações de Inserção, Atualização e Deleção (CRUD) utilizando estruturas condicionais `CASE`.

- **Cenário 1:** E-commerce (Gestão de Produtos)
- **Cenário 2:** Universidade (Gestão de Alunos)
