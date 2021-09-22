# Teste Flutter da MarketEasy

Nesse projeto, vamos resolver o teste proposto pela MarketEasy.
Segue o teste abaixo.

# Consumir API
## Teste Técnico

- Este teste tem como objetivos:
  - Implementar um app utilizando o framework Flutter
  - Autenticar com uma api REST (login)
  - Armazenar o token fornecido
  - Consumir a api com o token fornecido
  - Inserir cada produto da lista de produtos retornados pela API em um objeto, inserir esse objeto em uma lista/array de objetos, e exibir essa lista no app.


## Fluxo
Desenvolva um app mobile utilizando o framework Flutter que consuma uma API de produtos.

O app deverá ter duas telas:
  - Login 
  - Listagem de produtos

1 - Na tela de login, deverá ter dois inputs, e um botão "Login". O app deve se autenticar com a api utilizando-se da rota POST: http://servicosflex.rpinfo.com.br:9000/v1.1/auth
Esta rota recebe um body do tipo JSON, e as credenciais de acesso seguem:

````
{
  "usuario": "100000",
  "senha": "123456"
}
````

A api irá responder com um objeto semelhante ao que segue:

````
{
  "response": {
    "status": "ok",
    "messages": [
      {
        "message": "Autenticação bem sucedida"
      }
    ],
    "token": "SEU_TOKEN_AQUI",
    "tokenExpiration": "10/03/2021 12:22:09"
  }
}

````

Este token deve ser armazenado, com o auxílio de alguma biblioteca de gerenciamento de estado à sua escolha (GetX, MobX, etc), para ser utilizado posteriormente nas requisições autenticadas. A tela de listagem de produtos passa a ser acessível. Se o token não for mais válido, deve retornar à página de login.


2 - Na tela de listagem dos produtos, deve ter um botão fixo no rodapé da tela, onde ao clicar faz a requisição dos produtos em uma rota GET da API, com o token de autenticação: 
http://servicosflex.rpinfo.com.br:9000/v2.0/produtounidade/listaprodutos/0/unidade/83402711000110?token=SEU_TOKEN_AQUI

Esta rota irá trazer dentre outros dados, um array com vários produtos, semelhante ao exemplo


````
{
  "response": {
    "status": "ok",
    "messages": [
      {
        "message": "Dados carregados"
      }
    ],
    "produtos": [
      {
        "Codigo": 10162,
        "SKU": 10162,
        "CodigoBarras": "0000040084107",
        "CodigoNCM": "18069000",
        "Descricao": "Kinder Ovo",
        "Complemento": "",
        "Marca": "Dorizon",
        "Estoque": 0.0,
        "Preco": 3.89,
        "Grupo": "10000",
        "Oferta": "N",
        "DataOferta": "",
        "PrecoNormal": 0.0,
        "CodigoUnidade": "001",
        "CodigoDepartamento": "999",
        "Departamento": "Geral",
        "Ativo": true,
        "CodigoTributario": "905",
        "Estoque1": -873.0,
        "Estoque2": 0.0,
        "Estoque3": 0.0,
        "Estoque4": 0.0,
        "Estoque5": 0.0,
        "PrecoLista": 0.0,
        "PrecoPDV": 3.89,
        "PrecoPDV3": 0.0,
        "PrecoPDV4": 0.0,
        "PrecoPDV5": 0.0,
        "PrecoEtiqueta": 3.89,
        "PrecoCartaz": 0.0,
        "PrecoVenda2": 0.0,
        "PrecoVenda3": 0.0,
        "PrecoVenda4": 0.0,
        "PrecoVenda5": 0.0,
        "FatorPr3": 0,
        "FatorPr4": 0,
        "FatorPr5": 0,
        "CodEstoque": 0,
        "EstoqueMinimo": 0.0,
        "EstoqueMaximo": 0.0,
        "VendaMediaDiaria": 0.0,
        "Espaco": 0,
        "CodigoCaixa": "",
        "CustoCompra": 76.3639,
        "CustoEmpresa": 76.3639,
        "CustoFiscal": 76.3639,
        "CustoMedio": 76.3639,
        "CustoTranferencia": 76.3639,
        "SetorLoja": "",
        "SetorDeposito": "",
        "PrecoUnidadeMedida": 0.0,
        "DescricaoPDV": "Kinder Ovo",
        "Bloqueado": false,
        "Altura": 0,
        "Largura": 0,
        "Profundidade": 0,
        "Peso": 0.0,
        "PesoLiquido": 0.0,
        "DescricaoCliente": "",
        "Temperatura": 0.0,
        "TipoEmbalagem": "UN",
        "QuantidadeEmbalagem": 0
      }, ...
    ]
  }
}

````
Você deve mapear os dados dos produtos retornados pela API, em um objeto que deve ter os seguintes atributos:

  codigo_interno: Deve receber o valor "Codigo" do produto da API.
  descricao: Deve receber o valor "Descricao" do produto da API.
  valor_unitario: Deve receber o valor "Preco" do produto da API.
  codigo_de_barras: Deve receber o valor "CodigoBarras" do produto da API.


Organize os itens em uma lista rolável, que exibe a Descrição e o Preço dos produtos.


Caso aja algum erro ao acessar a API, o app deve exibir esse erro ao usuário.

Se preferir, a referência completa da api se encontra em: http://servicosflex.rpinfo.com.br:9000/v1.0/documentacao#/

Após a finalização, crie um repo com acesso público no seu github, e faça upload dos fontes, com um arquivo README com instruções de como executar.

A estilização é por sua livre imaginação.

Envie o link do repositório para robby.michael@marketeasy.store até 31/03 18:00.

Boa sorte :)

## Tecnologias, padrões e arquitetura.

Criei a arquitetura em cima dos conceitos do MVC, de Módulos, da POO (Programação Orientada a Objetos) e do conceito de Clean Code.
O gerenciador de estados que usei foi o GetX, que além de gerenciador de estados também é um gerenciador de dependencias e de rotas.
O código fonte já está aqui no GitHub.
Analise com carinho :)
