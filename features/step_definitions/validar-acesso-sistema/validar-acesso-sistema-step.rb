Quando("o {string} for acessado") do |string|
  @PageObject = PageObject.new
  @PageObject.acessar_menu(string)
end

Então("o sistema deve apresentar o {string}") do |string|
  @PageObject = PageObject.new
  @PageObject.acessar_sub_menu(string)
end