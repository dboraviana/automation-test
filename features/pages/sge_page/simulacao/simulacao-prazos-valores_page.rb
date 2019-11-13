class SimulacaoPrazosValoresPage < SitePrism::Page

  element :valor_credito_input, 'input[name="VA_CREDITO"]'

  def realizarRecalcular
    valor_credito_input.set("2000,00")
    find("span[class='x-btn-button']", :text => "Recalcular").click
  end

  def clicarBotaoImprimirSimulacao
    find("span[class='x-btn-button']", :text => "Imprimir").click
    sleep 20
  end

  def clicarBotaoFecharSimulacao
    find("span[class='x-btn-button']", :text => "Fechar").click
  end

  def avancarModalParaRecalculo
    find("[class='x-btn-button']", :text => "Sim").click
  end

end
