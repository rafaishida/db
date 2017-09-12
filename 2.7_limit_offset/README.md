# LIMIT
Restringe a quantidade de linhas de uma consulta. Considerando a performance da aplicação/banco,
não é uma boa prática realizar uma consulta que retorna uma grande quantidade de linhas do banco de dados e apenas mostrar parte dessas linhas. É mais otimizado buscar no banco apenas a informação que será apresentada.

ex: retorne todos os campos da tabela "cargo", porém limite a apenas 1 linha.
```sql
SELECT * FROM cargos limit 1;
```

ex: retornando apenas as 10 primeiras linhas
```sql
SELECT * FROM cargos limit 10;
```

ex: retornando apenas as últimas 10 linhas
```sql
SELECT * FROM cargos order by id desc limit 10;
```

# PAGINAÇÃO
Técnica comum, quando a quatidade de items a ser visualizado
ultrapassa o limite de uma página, divide-se a informação em várias páginas. Determinado sistema apresenta apenas 5 itens por página. Para apresentar os 10 primeiros items, serão necessárias no mínimo duas páginas, como ficaria essa consulta no banco de dados?

ex: offset -
```sql
SELECT * FROM cargos limit 5 offset 4;
SELECT * FROM cargos limit 4, 5; #inverte...
```

# Exercícios, utilizando LIMIT:
1. Quem é o funcionário com o maior salário?
2. Quem é o funcionário com o menor salário?
3. Quem é o funcionário e cargo, que possui o 2º maior salário?
