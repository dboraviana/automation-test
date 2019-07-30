class LoginPage < SitePrism::Page

  include Capybara::DSL

  #Login
  element :div_pagina_confirma, "#pagina"
  element :input_user_name, "#username"
  element :input_password, "#password"
  element :button_acessar, ".btn-normal"
  element :button_acessar_value, "input[value='Acessar']"

  #Usuario portal page
  element :div_confirma_usuario, "div[id='topo'] div.topo-info-usuario label.resposta"

  #Logoff
  element :href_faz_logoff_pexnet, "a[href$='end']"
  element :faz_logoff_sistema, "a", :text => "Sair"

  def faz_login_pexnet
    case AMBIENTE
    when 'homologacao'
      expect(div_pagina_confirma.text()).to include "Sistema de Controle de Acesso"
      input_user_name.set(CUSTOM['user_name_homolog'])
      button_acessar_value.click
      valida_login_pexnet
    when 'producao'
      expect(div_pagina_confirma.text()).to include "Sistema de Controle de Acesso"
      input_user_name.set(CUSTOM['user_name_prod'])
      input_password.set(CUSTOM['password_prod'])
      button_acessar_value.click
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
      expect(div_confirma_usuario.text()).to include "JOHNATAN CARVALHO DA SILVA"
    when 'producao'
      wait_until_div_confirma_usuario_visible
      expect(div_confirma_usuario.text()).to include "gmud_automacao"
    when 'docker'
      ""
    when 'teste'
      ""
    else
      "Error: não foi possível localizar o ambiente de valor: (#{AMBIENTE})"
    end
  end

  def faz_logoff_pexnet
    href_faz_logoff_pexnet.click
  end

  def faz_logoff_sistemas
    within_window(windows.last) do
      faz_logoff_sistema.click
    end
  end
end