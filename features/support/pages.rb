class LoginPage

  include Capybara::DSL

  def fazLogin(usuario, senha)
    find('#email').set usuario
    find('#senha').set senha
    click_button 'Acessar'
    #find('input[id=email]').set usuario
    #find('input[name=senha]').set senha
    #find('#btn-login').click
  end

end