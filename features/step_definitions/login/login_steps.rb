Dado("que eu entrei na página principal") do
  visit 'http://sccihomologa.poupex.com.br/sge/'
end

Quando("eu faço login com meu {string} e {string}") do |usuario, senha|
  login = LoginPage.new
  login.fazLogin(usuario, senha, '/poupex')
end

Então("devo ver no menu da página inicial o meu CPF {string}") do |cpf_logado|
  have_selector "span[class='x-btn-button']", :text => cpf_logado
end