# Exercícios

Exercícios propostos por <a href="https://github.com/andriwsluna">Andriws Luna</a> , Orientador em minha jornada como estagiário.

#### 1° Faça um programa de cadastro pessoas(Cliente e Vendedor), totalmente orientado a objetos, sem acesso a banco dedados, ou seja, o armazenamento de dados pode ser feito em memória com qualquer estrutura de dados (vetor, matriz e etc). 

1. Toda pessoa tem as seguintes características:

- Nome [string][50][not null];
- Idade [integer][not null];
- Método Salvar (que valida e salva os dados) [fn :boo];

2. Todo cliente tem , além das características de pessoa, o seguinte:

- Melhor dia de vencimento [integer][not null][1-31]
- Endereço de entrega[string][200][not null]
- Todo vendedor tem  , além das características de pessoa, o seguinte:
- Percentual de comissão[float][not null][>0]
- Tipo de vendedor[char][not null][I,E] (interno ou externo)

3. Ao final , o programa deverá ter um botão que liste, de forma simples, todas as pessoas cadastradas.

#### 2° Pedido de venda: 

Faça um programa, com herança visual , que simule uma tela de pedido de venda. (3 tipos )

1. Todo pedido de venda tem as seguintes características.

- Número do pedido[Integer][Not null]
- Nome do Vendedor[String][100][Not null]
- Valor do Pedido[Float][Not null]
- Nome do cliente[String][100][Not null]
- Um botão salvar, que valida e processa os dados.

2. O pedido de venda interna tem, além das características de pedido de venda, o seguinte:

- Após o processamento dos dados, ele gera um código DAV, que é a concatenação do número do pedido com o data atual no seguinte formato”AAAAMMDD”.
- Não aceita pedidos com valor maior que 1.000,00.

3. O pedido de venda externa tem, além das características de pedido de venda, o seguinte:

- Nome do vendedor externo[String][100][Not null] 
- Após o processamento dos dados, ele gera um código DAV, que é a concatenação do número do pedido com as três primeiras letras do vendedor externo e com o data atual no seguinte formato”AAAAMMDD”.

4. O pedido de venda MOIP,além das características de pedido de venda interno, o seguinte:

- Número do pedido MOIP[string][20][Not null]
- Após o processamento do pedido, ele gera um código de autorização MOIP, que consiste na concatenação do número do pedido + Nº Ped MOIP + MD5 do código “7010”.



#### 3° ComboBox2: 
Faça um novo combo box, herdando do padrão, que contenha a propriedade keys, semelhante à propriedade itens, porém para armazenar códigos dos itens. Desta forma, faça também, uma função chamada getKey para retornar o código do item selecionado.


