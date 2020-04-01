class LoginPage < SitePrism::Page
  include Capybara::DSL

  element :input_usuario, "#username"
  element :input_senha, "#password"
  element :div_titulo_pagina, "#pagina"
  element :div_confirma_usuario, "div[id='topo'] div.topo-info-usuario label.resposta"


  def initialize
    @PO = PageObject.new
  end

  def faz_login
    case AMBIENTE
    when 'homologacao'
      @PO.texto_eperado(div_titulo_pagina, "Sistema de Controle de Acesso")
      @PO.digita(input_usuario, (CUSTOM['user_name_homolog']))
      sleep 2
      @PO.botao_com_value('Acessar')
      valida_login_pexnet
    when 'producao'
      @PO.texto_eperado(div_titulo_pagina, "Sistema de Controle de Acesso")
      @PO.digita(input_usuario, (CUSTOM['user_name_prod']))
      @PO.digita(input_senha, (CUSTOM['password_prod']))
      @PO.botao_com_value('Acessar')
      valida_login_pexnet
    when 'docker'
      ""
    when 'teste'
      ""
    else
      "Error: não foi possível localizar o ambiente de valor: (#{AMBIENTE})"
    end
  end


  def valida_login_pexnet
    case AMBIENTE
    when 'homologacao'
      wait_until_div_confirma_usuario_visible
      @PO.texto_eperado(div_confirma_usuario, "JOHNATAN CARVALHO DA SILVA")
    when 'producao'
      wait_until_div_confirma_usuario_visible
      @PO.texto_eperado(div_confirma_usuario, "gmud_automacao")
    when 'docker'
      ""
    when 'teste'
      ""
    else
      "Error: não foi possível localizar o ambiente de valor: (#{AMBIENTE})"
    end
    sleep 2
  end


end