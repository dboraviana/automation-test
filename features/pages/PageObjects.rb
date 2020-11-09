class PageObject < SitePrism::Page
  include Capybara::DSL
  include RSpec::Matchers

  def clicar(element)
    element.click
  end


  def digita(element, value)
    element.set(value)
  end


  def selecionar_opcao(element, value)
    element.select(value)
  end


  def botao_com_value(nome_botao)
    find("input[value='" + nome_botao + "'").click
  end


  def texto_eperado(element, mensagem)
    expect(element.text()).to include mensagem
  end


  def acessar_menu(menu)
    find("#formMenu td.rf-tb-itm a", :text => "#{menu}").click
  end

  def acessar_sub_menu(sub_menu)
    find("a[title='#{sub_menu}']").click
  end
end