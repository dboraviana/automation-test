require 'oci8'

class PortalPexNetPage < SitePrism::Page
  include Capybara::DSL

  #Usuario portal page
  element :div_confirma_usuario, "div[id='topo'] div.topo-info-usuario label.resposta"

  #Menu portal page
  element :menu_administracao, "#formMenu td.rf-tb-itm a", :text => "Administração"
  element :menu_governanca_ti, "#formMenu td.rf-tb-itm a", :text => "Governança - de TI"
  element :menu_produtos, "#formMenu td.rf-tb-itm a", :text => "Produtos"
  element :menu_qualidade, "#formMenu td.rf-tb-itm a", :text => "Qualidade"

  #Sub menu ADMINISTRACAO
  element :href_agpag, "a[title*='AGPAG']"

  #Sub menu PRODUTOS
  element :href_central_de_pagamentos, "div.aplicacao a[title='Central de Pagamentos']"
  element :href_emprestimo_pouprev, "a[title='Empréstimo POUPREV']"
  element :href_sinistro, "a[title='Sinistro']"
  element :href_scb, "a[title='Sistema de Gestão de Cobrança - SCB']"
  element :href_odonto, "a[title='Sistema de Gestão de Planos Odontológicos']"
  element :href_fam_familia, "a[title='Sistema de Gestão de Seguros FAM']"
  element :href_decessos, "a[title='Sistema de Gestão do Seguro Decessos']"

  #Page sistema acessado
  element :div_valida_user, "div[id='footer']"
  element :span_valida_user_sinistro, "#userName"

  def initialize
    @LoginPage = LoginPage.new
  end

  def acessa_agpag_novo
    menu_administracao.click
    wait_until_href_agpag_visible
    href_agpag.click
    valida_usuario_logado
    @LoginPage.faz_logoff_sistemas
  end

  def acessa_fam_familia
    menu_produtos.click
    wait_until_href_fam_familia_visible
    href_fam_familia.click
    valida_usuario_logado
    @LoginPage.faz_logoff_sistemas
  end

  def acessa_odonto
    wait_until_href_odonto_visible
    href_odonto.click
    valida_usuario_logado
    @LoginPage.faz_logoff_sistemas
  end

  def acessa_decessos
    wait_until_href_decessos_visible
    href_decessos.click
    valida_usuario_logado
    @LoginPage.faz_logoff_sistemas
  end

  def acessa_sinistro
    wait_until_href_sinistro_visible
    href_sinistro.click
    valida_usuario_logado_sinistro
    @LoginPage.faz_logoff_sistemas
  end

  def acessa_central_de_pagamentos
    menu_produtos.click
    wait_until_href_central_de_pagamentos_visible
    href_central_de_pagamentos.click
    valida_login_central_pagamento
    @LoginPage.faz_logoff_sistemas
  end

  def acessa_scb
    wait_until_href_scb_visible
    href_scb.click
  end

  def valida_login_scb
    case AMBIENTE
    when 'homologacao'
      within_window(windows.last) do
        expect(div_confirma_usuario.text()).to include "JOHNATAN CARVALHO DA SILVA"
      end
    when 'producao'
      within_window(windows.last) do
        expect(div_confirma_usuario.text()).to include "gmud_automacao"
      end
    when 'docker'
      ""
    when 'teste'
      ""
    else
      "Error: não foi possível localizar o ambiente de valor: (#{AMBIENTE})"
    end
  end

  def valida_login_central_pagamento
    case AMBIENTE
    when 'homologacao'
      within_window(windows.last) do
        expect(div_confirma_usuario.text()).to include "02731893109"
      end
    when 'producao'
      within_window(windows.last) do
        expect(div_confirma_usuario.text()).to include "00000000191"
      end
    when 'docker'
      ""
    when 'teste'
      ""
    else
      "Error: não foi possível localizar o ambiente de valor: (#{AMBIENTE})"
    end
  end

  def valida_usuario_logado
    case AMBIENTE
    when 'homologacao'
      within_window(windows.last) do
        expect(div_valida_user.text()).to include "JOHNATAN CARVALHO DA SILVA"
      end
    when 'producao'
      within_window(windows.last) do
        expect(div_valida_user.text()).to include "gmud_automacao"
      end
    when 'docker'
      ""
    when 'teste'
      ""
    else
      "Error: não foi possível localizar o ambiente de valor: (#{AMBIENTE})"
    end
  end

  def valida_usuario_logado_sinistro
    case AMBIENTE
    when 'homologacao'
      within_window(windows.last) do
        expect(span_valida_user_sinistro.text()).to include "JOHNATAN CARVALHO DA SILVA"
      end
    when 'producao'
      within_window(windows.last) do
        expect(span_valida_user_sinistro.text()).to include "gmud_automacao"
      end
    when 'docker'
      ""
    when 'teste'
      ""
    else
      "Error: não foi possível localizar o ambiente de valor: (#{AMBIENTE})"
    end
  end
end