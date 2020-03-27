Quando("o {string} for acessado") do |string|
  @PageObject = PageObject.new
  @PageObject.acessar_menu(string)
end

Quando("acessar o {string}") do |string|
  @PageObject = PageObject.new
  @PageObject.acessar_sub_menu(string)
end

Então("o sistema deve apresentar o sistema") do
  @LoginPage = LoginPage.new
  @LoginPage.valida_login_pexnet
end