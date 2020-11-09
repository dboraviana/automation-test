Dado("que o sistema PexNet for acessado") do
  @LoginPage = LoginPage.new
  @LoginPage.faz_login

  @OracleConnection = OracleConnection.new
  @OracleConnection.exec("  DELETE FROM SCI.PARCELA_PROMESSA PP WHERE PP.ID_PARCELA = 1055")
end

Então("o sistema apresenta página inicial do PexNet") do
  @LoginPage = LoginPage.new
  @LoginPage.valida_login_pexnet
end