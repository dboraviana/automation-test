include RSpec::Matchers


Dado("que eu faça o login no PexNet") do
  @LoginPage = LoginPage.new
  @LoginPage.faz_login_pexnet
end

Quando("acesso o AGPAG") do
  @database = Database.new
  @database.select

  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_agpag_novo
end

Quando("acesso o FAM FAMILIA") do
  @PortalPexNetPage.acessa_fam_familia
end

Quando("acesso o ODONTO") do
  @PortalPexNetPage.acessa_odonto
end

Quando("acesso o DECESSOS") do
  @PortalPexNetPage.acessa_decessos
end

Quando("acesso o SINISTRO") do
  @PortalPexNetPage.acessa_sinistro
end

Quando("acesso o SCB") do
  @PortalPexNetPage.acessa_scb
end

Quando("acesso o CENTRAL DE PAGAMENTOS") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_central_de_pagamentos
end

Então("o sistema deve exibir o nome do usuário logado") do
  @PortalPexNetPage.valida_login_scb
end