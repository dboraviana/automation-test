#Este passo será sempre executado antes de um cenário com a tag @specs
Before('@faz_login_sistema') do
  visit 'http://sccihomologa.poupex.com.br/sge/'

  usuario = "05064115164"
  senha = "Brasil07!"
  login = LoginPage.new
  login.faz_login(usuario, senha, '/poupex')
end

After('@login_simples') do
  find("span[class='x-btn-button']", :text => 'Sair').click
end

#Este After será executado após a execução de todos os cenários
After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.gsub(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Confira a evidência')
end