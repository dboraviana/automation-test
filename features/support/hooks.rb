After('@logout_simples') do

  #click_link 'Alysson Vicuña de Oliveira'
  find('a[title=Associado]').click
  click_link 'Sair'
end

After('@logout_completo') do

  #perfil = @perfil_usuario
  #click_link @perfil_usuario
  #find("a[title=#{perfil}]").click
  #find("a[data-toggle=dropdown]").click
  texto_procurado="dropdown"
  find("a[data-toggle=#{texto_procurado}]").click
  click_link 'Sair'
end

#Este After será executado após a execução de todos os cenários
After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.gsub(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Confira a evidência')
end