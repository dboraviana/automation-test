class SubMenuConcessaoPage < SitePrism::Page

  def clicarBotaoSimulador
    find("div[class='x-component x-box-item x-component-default x-menu-item']", :text => "Simulador").click
  end

  def clicarBotaocadastroProposta
    find("div[class='x-component x-box-item x-component-default x-menu-item']", :text => "Cadastro de propostas").click
  end
end
