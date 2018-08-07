class LoginPage < SitePrism::Page
  include Capybara::DSL

  element :username_field, "input[name='userName']"
  element :password_field, "input[name='password']"
  element :ambiente_operacional_field, "input[name='ambienteOperacional']"

  def faz_login(usuario, senha, ambiente_operacional)
    username_field.set(usuario)
    password_field.set(senha)
    ambiente_operacional_field.set(ambiente_operacional)

    find("span[class='x-btn-button']", :text => 'Login').click
  end
end