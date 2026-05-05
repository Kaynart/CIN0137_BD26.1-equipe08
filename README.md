# 🎥 Banco de Dados - Produtora de Filmes

Projeto prático de implementação de Banco de Dados desenvolvido como requisito da disciplina. O sistema modela as operações de uma produtora cinematográfica.

<br>

## 👥 Equipe 08
| **Nome Integrante** | **login CIn** |
| :--- | :---: |
| Caio de Oliveira Daltro Gouté | ***codg*** |
| Felipe Almeida Albuquerque de Holanda | ***faah*** |
| Guilherme Galindo Zloccowick | ***ggz*** |
| Jonas Manoel Barbosa de Lima | ***jmbl2*** |
| Kaynan Roberth Torres Silva | ***krts*** |
| Maria Clara Pereira Goncalves | ***mcpg*** |

<br>
  
## 🗂️ Estrutura do Repositório
O projeto está organizado para facilitar a análise e execução, modelado com o seguinte esqueleto:

* 📁 `docs/` -> Documentação do projeto (Minimundo, Modelo e Diagrama em PDF/PNG).
* 📁 `scripts/` -> Arquivos SQL usados como execução.
  * 📄 `01_ddl_criacao.sql`: Script de definição (DDL) - criação da estrutura do Banco de Dados.
  * 📄 `02_dml_povoamento.sql`: Script de modelagem (DML) - povoamento do Banco com dados criados.

<br>

## 🖼️ | Visualização do Banco de Dados - Diagrama ER
![Diagrama do Banco](https://github.com/Kaynart/CIN0137_BD26.1-equipe08/blob/main/docs/Diagrama%20Grupo08.drawio.png)

<br>

## ⚙️| *(DDL)* Gerando a estrutura do *Banco de Dados - Produtora de Filmes* no Oracle

Para gerar a estrutura do banco de dados, execute o conteúdo do arquivo scripts/01_ddl_criacao.sql em sua ferramenta de preferência (ex: Oracle SQL Developer). Execute o script de uma só vez para garantir a criação das Sequences antes das tabelas, as quais também seguem uma ordem de implementação por "independência".

A modelagem abrange os componentes das operações centrais de uma Produtora de Filme. Alcança desde o controle de Recursos Humanos até a logística de equipamentos e figurinos. O sistema está dividido nos seguintes módulos lógicos:

* **Gestão de Pessoal (RH):** Controle centralizado dos colaboradores na tabela `funcionario` e suas respectivas especializações (`diretor`, `ator`, `figurinista`). Também gerencia os dados cadastrais amplos, como `endereco_funcionario`, `telefone_funcionario` e o registro de `dependentes` beneficiários por esse funcionário.
* **Acervo e Produção Cinematográfica:** Gerenciamento das produções principais (`filme`) e suas categorias (`genero_filme`).
* **Elenco e Atuação:** Controle de casting, mapeando qual ator interpreta qual personagem em cada produção através da entidade associativa `ator_filme`.
* **Departamento de Arte e Figurino:** Administração do guarda-roupa da produtora (`figurino`), rastreando quem os vestirá nos filmes e relacionando qual figurinista `confecciona` cada peça.
* **Ambiente de Gravação:** Controle do espaço físico da produtora, gerenciando os estúdios disponíveis (`estudio`) e mapeando quais filmes os ocupam (`ocupa`).
* **Fornecimento e Equipamentos:** Controle logístico de `equipamento` e quem os promove (`fornecedor`). Por fim, através do relacionamento `aloca`, o sistema rastreia o aporte e a devolução de equipamentos alugados de terceiros para o uso nas produções.

<br>
<br>

*Imagem exemplo de um ambiente após a criação das tabelas do Banco de Dados:*

<img width="371" height="603" alt="image" src="https://github.com/user-attachments/assets/80d66e83-415f-4ea3-92fd-810358f0cb4e" />

### 📄 Requisitos que o **Script 1: `01_ddl_criacao.sql` (Estrutura)** abrange
- [x] `CREATE SEQUENCE` para gerar sequências de incrementação usadas em ID's
- [x] `CREATE TABLE` com diferentes tipos de dados (`VARCHAR2`, `NUMBER`, `DATE`, `CHAR`).
- [x] CLÁUSULA `CONSTRAINT EM CREATE TABLE` com restrições de integridade de entidade (Chaves Primárias - `PRIMARY KEY`).
- [x] CLÁUSULA `CONSTRAINT EM CREATE TABLE` com restrições de integridade referencial (Chaves Estrangeiras - `FOREIGN KEY`).
- [x] CLÁUSULA `CHECK EM CREATE TABLE` para restrições de checagem e validação de dados inseridos.
