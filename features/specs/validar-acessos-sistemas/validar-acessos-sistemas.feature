#language:pt
@acesso_sistemas
Funcionalidade: Validar acessos aos sistemas

  Como usuário com permissão de acesso ao sistema PexNet
  Quero realizar o login nos sistemas
  Para confirmar o acesso aos aplicativos


  Contexto: Acessar o sistema PexNet
    Dado que o sistema PexNet for acessado


  Esquema do Cenário: Validar acessos aos sistemas
    Quando o "<menu>" for acessado
    E acessar o "<sub_menu>"
    Então o sistema deve apresentar o sistema
    Exemplos:
      | menu          | sub_menu                                  |
      | Administração | AGPAG(NOVO)                               |
      | Produtos      | Sistema de Gestão de Seguros FAM          |
      | Produtos      | Sistema de Gestão do Seguro Decessos      |
      | Produtos      | Sinistro                                  |
      | Produtos      | Central de Pagamentos                     |
      | Produtos      | Sistema de Gestão de Cobrança - SCB       |