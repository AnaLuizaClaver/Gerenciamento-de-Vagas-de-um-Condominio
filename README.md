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

## Desenvolvido por

Este projeto foi desenvolvido por [Ana Luiza Claver](https://github.com/AnaLuizaClaver). Sinta-se à vontade para entrar em contato em caso de dúvidas ou sugestões.

[![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/AnaLuizaClaver)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/analuizaclaver/)

## Licença

Este projeto está licenciado sob os termos da [Licença MIT](LICENSE), permitindo cópia, modificação e distribuição, desde que os créditos sejam mantidos. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.


