class MenuPrincipalPage < SitePrism::Page

  def clicarBotaoSGE
    find("span[class='x-btn-button']", :text => "SGE").click
  end


  def clicarBotaoConcessao
    find("span[class='x-btn-button']", :text => "Concessão").click
  end


  def clicarBotaoSisat
    find("span[class='x-btn-button']", :text => "SisAt").click
  end


  def clicarBotaoRelatorios
    find("span[class='x-btn-button']", :text => "Relatórios").click
  end


  def clicarBotaoDocumentos
    find("span[class='x-btn-button']", :text => "Documentos").click
  end


  def clicarBotaoManutencao
    find("span[class='x-btn-button']", :text => "Manutenção").click
  end


end

