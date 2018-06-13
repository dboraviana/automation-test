Dado("que eu acesse a tela de simulação") do
  #Acessa o menu "Concessão"
  botao_concessao = 'Concessão'
  have_selector "span[class='x-btn-button']", :text => botao_concessao
  find("span[class='x-btn-button']", :text => botao_concessao).click

  #Acessa o botão "Simulador"
  botao_simulador = 'Simulador'
  have_selector "div[class='x-component x-box-item x-component-default x-menu-item']", :text => botao_simulador
  find("div[class='x-component x-box-item x-component-default x-menu-item']", :text => botao_simulador).click
end

Quando("visualizar o conteudo {string}") do |mensagem|
  #Certifica de que acessou a página de Simulação
  have_selector "div[class='x-component x-header-text-container x-panel-header-text-container x-panel-header-text-container-default-framed x-box-item x-component-default']", :text => mensagem
  find("div[class='x-component x-header-text-container x-panel-header-text-container x-panel-header-text-container-default-framed x-box-item x-component-default']", :text => mensagem).click
  end

Quando("preencho os dados com um perfil XPTO") do
  puts "Preencher os campos com os dados"
end

Quando("preencho os dados com um perfil XPTO2") do
  puts "Preencher os campos com os dados"
end