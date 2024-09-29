# Projeto de Banco de Dados - Faculdade

Este projeto foi desenvolvido como parte das atividades da disciplina de Banco de Dados. O objetivo é criar e manipular um banco de dados relacional para a gestão de apartamentos e vagas de garagem de um edifício residencial.

## Tecnologias Utilizadas
- **Banco de Dados:** Oracle
- **Ferramentas:** Oracle SQL Developer

## Estrutura do Banco de Dados

### Tabelas Criadas

- **Clientes**
    - `codcli`: Código do cliente (gerado automaticamente)
    - `andar`: Andar onde o cliente mora
    - `nome`: Nome do cliente
    - `fone`: Telefone de contato
    - `dtaniv`: Data de aniversário
    - `qtdemoradores`: Quantidade de moradores no apartamento
    - `numapto`: Número do apartamento (chave primária)
    - `tipopropriedade`: Tipo de propriedade (`P` para proprietário, `A` para alugado)
    - `multa`: Multa por atraso no pagamento de condomínio

- **Vagas**
    - `numvaga`: Número da vaga (chave primária)
    - `numapto`: Número do apartamento (chave estrangeira)
    - `observacao`: Observações (se a vaga está ocupada ou "vago")
    - `tipovaga`: Tipo de vaga (`simples` ou `dupla`)

## Principais Funcionalidades

- **Inserção de Dados:** Realizamos inserções de dados nas tabelas de clientes e vagas.
- **Consultas SQL:**
    - Listagem de aniversariantes de um determinado mês.
    - Consulta de moradores por andar e quantidade de moradores.
    - Listagem de vagas ocupadas ou vagas "vagas".
    - Consultas utilizando junções (`JOIN`) entre as tabelas.

## Consultas SQL

### Aniversariantes de Setembro
```sql
SELECT nome, dtaniv
FROM clientes
WHERE EXTRACT(MONTH FROM dtaniv) = 9;
