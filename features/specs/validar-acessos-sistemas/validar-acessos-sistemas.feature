#language:pt
@acesso_sistemas
Funcionalidade: Fazer login

  Como usuário com permissão de acesso ao sistema PexNet
  Quero realizar o login nos sistemas
  Para confirmar o acesso aos aplicativos


  Contexto: Acessar o sistema PexNet
    Dado que o sistema PexNet for acessado


  Esquema do Cenário: Validar acessos aos sistemas
    Quando o "<menu>" for acessado
    E o "<sub_menu>" for acessado
    Então o sistema deve apresentar o "<sistema>"
    Exemplos:
      | menu          | sub_menu | sistema       |
      | Produtos      | AGPAG    | AGPAG(NOVO)   |
      #| Administração | AGPAG    | AGPAG(NOVO)   |


#  Cenario: Acessar o FAM FAMILIA

 #   Quando acesso o FAM FAMILIA
  #  Então o sistema deve exibir o nome do usuário logado no FAM FAMILIA

  #Cenario: Acessar o ODONTO

   # Quando acesso o ODONTO
    #Então o sistema deve exibir o nome do usuário logado no ODONTO

  #Cenario: Acessar o DECESSOS

   # Quando acesso o DECESSOS
    #Então o sistema deve exibir o nome do usuário logado no DECESSOS

  #Cenario: Acessar o SINISTRO

   # Quando acesso o SINISTRO
    #Então o sistema deve exibir o nome do usuário logado no SINISTRO

  #Cenario: Acessar o CENTRAL DE PAGAMENTOS

   # Quando acesso o CENTRAL DE PAGAMENTOS
   # Então o sistema deve exibir o nome do usuário logado no CENTRAL DE PAGAMENTOS

  #Cenario: Acessar o SCB

   # Quando acesso o SCB
    #Então o sistema deve exibir o nome do usuário logado no SCB
