Dado("que o sistema PexNet for acessado") do
  @LoginPage = LoginPage.new
  @LoginPage.faz_login
end

Então("o sistema apresenta página inicial do PexNet") do
  @LoginPage = LoginPage.new
  @LoginPage.valida_login_pexnet
end