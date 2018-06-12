class LoginPage

  include Capybara::DSL

  def fazLogin(usuario, senha, ambiente_operacional)
    find('input[name=userName]').set usuario
    find('input[name=password]').set senha
    find('input[name=ambienteOperacional]').set ambiente_operacional

    find("span[class='x-btn-button']", :text => 'Login').click
  end

end