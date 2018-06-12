Dado("que eu entrei na página principal") do
  visit 'http://homologaintranet.assejus.org.br'
end

Quando("eu faço login com meu {string} e {string} e meu perfil é {string}") do |usuario, senha, perfil |
  @perfil_usuario = perfil
  login = LoginPage.new
  login.fazLogin(usuario, senha)
end

Quando("eu faço login com meu {string} e {string}") do |usuario, senha|
  login = LoginPage.new
  login.fazLogin usuario, senha
end

Então("devo ver a mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end

Então("devo ser autenticado com sucesso e visualizar o nome {string} no menu") do |mensagem|
  expect(page).to have_selector(:link_or_button, mensagem)
end

#Quando("eu faço login com meu {string} e {string} e meu nome é {string}") do |usuario, senha|
#find('input[id=email]').set usuario
#find('input[name=senha]').set senha
#find('#btn-login').click
#end