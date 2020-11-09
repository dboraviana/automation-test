#language:pt

  Funcionalidade: Recuperar lista de marcas cadastradas

    @get_marcas
    Cenario: GET marcas

      Dado que queira visualizar as marcas cadastradas
      Quando acionar serviço que retorna tais informações
      Então o serviço retorna a lista de marcas cadastradas

