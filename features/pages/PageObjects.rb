# Classe disponibilizada para implementação de metodos genericos para tentar diminuir
# a repetição de metodos com as mesmas responsabilidades.
# Essa classe deverá ser instanciada nas pages ou steps.

class PageObject < SitePrism::Page
  include Capybara::DSL
  include RSpec::Matchers

  #clicar no elemento informado
  def clicar(element)
    element.click
  end

  #digita o value no elemento passado
  def digita(element, value)
    element.set(value)
  end

  #selecionar opção de um select
  def selecionar_opcao(element, value)
    element.select(value)
  end

  #clicar no botão de input com o valor passado
  def botao_com_value(nome_botao)
    find("input[value='" + nome_botao + "'").click
  end

  #valida a mensagem apresentada no elemento informado
  def texto_eperado(element, mensagem)
    expect(element.text()).to include mensagem
  end

  #clicar no menu do pexnet
  def acessar_menu(menu)
    find("#formMenu td.rf-tb-itm a", :text => "#{menu}").click
  end

  #clicar nos sistemas apresentados no pexnet
  def acessar_sub_menu(sub_menu)
    find("a[title='#{sub_menu}']").click
  end
end