#language:pt

Funcionalidade: Filtrar carros

  Como um usuário
  Quero realizar consulta de carros utilizando filtro de modelo e versão
  Para que a busca pelo carro desejado se torne mais fácil

  @realizar_consulta @ui
  Cenario:  Filtrar carros

    Dado que queira consultar carros
    Quando informar o filtro de modelo e versao
    Então o sistema deve apresentar os carros desejados

