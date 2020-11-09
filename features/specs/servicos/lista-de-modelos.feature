#language:pt

Funcionalidade: Recuperar lista de marcas cadastradas

  @get_modelos
  Esquema do Cenario: GET modelos

    Dado que queira visualizar os modelos cadastrados
    Quando informar a marca <id_marca>
    Então o serviço retorna a lista de "<modelos>" da marca

    Exemplos:
      | id_marca | modelos |
      | 1        | true    |
      | 2        | true    |
      | 4        | false   |
