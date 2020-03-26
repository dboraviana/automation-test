Dado("que o sistema PexNet for acessado") do
  @LoginPage = LoginPage.new
  @LoginPage.faz_login
  sleep 2
end