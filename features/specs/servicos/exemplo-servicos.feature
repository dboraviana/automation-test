#language:pt

Funcionalidade: Validar todos os Serviços do Módulo de Reserva, Item Locavel, Tipo Item, Usuario
  Como um desenvolvedor de Serviços do Sistema
  Preciso validar todos os serviços criados para o módulo de item locavel
  Para garantir que os serviços estão respondendo conforme esperado

  @servico
  Esquema do Cenário: Validar todos os serviços de Item Locavel presentes no Sistema
    Quando acessar a URL <url_servico> para o funcionamento do serviço
    Então o serviço deverá apresentar a resposta de sucesso na comunicação
    Exemplos:
      | url_servico                                                                               |
      | "https://homologaintranet.assejus.org.br/api/v1/item-locavel/periodo-disponibilidade/5"   |
      | "https://homologaintranet.assejus.org.br/api/v1/item-locavel"                             |

  @servico_reserva @servico
  Esquema do Cenário: Validar todos os serviços de RESERVA presentes no Sistema
    Quando acessar a URL <url_servico> para o funcionamento do serviço
    Então o serviço deverá apresentar a resposta de sucesso na comunicação
    Exemplos:
      | url_servico                                                                                               |
      | "https://homologaintranet.assejus.org.br/api/v1/reservas/pesquisar-disponibilidade/1/08:00/18:00/08-2019" |
      | "https://homologaintranet.assejus.org.br/api/v1/reservas/metodo-personalizado/10/20"                      |
      | "https://homologaintranet.assejus.org.br/api/v1/reservas"                                                 |
      | "https://homologaintranet.assejus.org.br/api/v1/reservas/buscar-por-cpf/71225919167"                      |
      | "https://homologaintranet.assejus.org.br/api/v1/reservas/buscar-por-associado/5"                          |
      | "https://homologaintranet.assejus.org.br/api/v1/carteirinha-associado/buscar-por-cpf-titular/71225919167" |

  @servico
  Esquema do Cenário: Validar todos os serviços de Tipo Item presentes no Sistema
    Quando acessar a URL <url_servico> para o funcionamento do serviço
    Então o serviço deverá apresentar a resposta de sucesso na comunicação
    Exemplos:
      | url_servico                                                                          |
      | "https://homologaintranet.assejus.org.br/api/v1/tipo-item/montar-menu-lateral-app"   |xx

  @servico
  Esquema do Cenário: Validar todos os serviços de USUARIO presentes no Sistema
    Quando acessar a URL <url_servico> para o funcionamento do serviço
    Então o serviço deverá apresentar a resposta de sucesso na comunicação
    Exemplos:
      | url_servico                                                                                                          |
      | "https://homologaintranet.assejus.org.br/api/v1/usuario/validar-acesso/71225919167/25d55ad283aa400af464c76d713c07ad" |
      | "https://homologaintranet.assejus.org.br/api/v1/usuario/metodo-personalizado/10/20"                                  |

