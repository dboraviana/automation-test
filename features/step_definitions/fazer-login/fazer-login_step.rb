include RSpec::Matchers


Dado("que eu faça o login no PexNet") do
  @LoginPage = LoginPage.new
  @LoginPage.faz_login_pexnet
end

Quando("acesso o AGPAG") do

  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_agpag_novo

  # $$$$$$$$ Comandos do Postgres $$$$$$$$
  @database_postgres = DatabasePostgres.new
  @database_postgres.database_version
  @database_postgres.listar_registros

  # $$$$$$$$ Comandos do Oracle $$$$$$$$
  @database_oracle = DatabaseOracle.new
  @database_oracle.select

  # $$$$$$$$ Comandos do MySQL $$$$$$$$
  @database_mysql = DatabaseMysql.new
  @database_mysql.database_version
  @database_mysql.listar_databases
  @database_mysql.listar_registros
  @database_mysql.select
end

Então("o sistema deve exibir o nome do usuário logado no AGPAG") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.valida_usuario_logado
end

Quando("acesso o FAM FAMILIA") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_fam_familia
end

Então("o sistema deve exibir o nome do usuário logado no FAM FAMILIA") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.valida_usuario_logado
end

Quando("acesso o ODONTO") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_odonto
end

Então("o sistema deve exibir o nome do usuário logado no ODONTO") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.valida_usuario_logado
end

Quando("acesso o DECESSOS") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_decessos
end

Então("o sistema deve exibir o nome do usuário logado no DECESSOS") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.valida_usuario_logado
end

Quando("acesso o SINISTRO") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_sinistro
end

Então("o sistema deve exibir o nome do usuário logado no SINISTRO") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.valida_usuario_logado_sinistro
end


Quando("acesso o CENTRAL DE PAGAMENTOS") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_central_de_pagamentos
end

Então("o sistema deve exibir o nome do usuário logado no CENTRAL DE PAGAMENTOS") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.valida_login_central_pagamento
end

Quando("acesso o SCB") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.acessa_scb
end

Então("o sistema deve exibir o nome do usuário logado no SCB") do
  @PortalPexNetPage = PortalPexNetPage.new
  @PortalPexNetPage.valida_login_scb
end
