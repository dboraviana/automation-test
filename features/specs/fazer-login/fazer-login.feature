#language:pt

Funcionalidade: Fazer login

  Como um usuário
  Quero fazer o login nos sistemas
  Para confirmar os acessos

  Contexto: Acessar o PexNet

  Cenario: Acessar os Sistemas para GMUD

    Dado que eu faça o login no PexNet
    Quando acesso o AGPAG
    E acesso o FAM FAMILIA
    E acesso o ODONTO
    E acesso o DECESSOS
    E acesso o SINISTRO
    E acesso o CENTRAL DE PAGAMENTOS
    E acesso o SCB
    Então o sistema deve exibir o nome do usuário logado