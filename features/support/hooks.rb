require "report_builder"


Before("@ui") do
  visit ''
end

After do |scenario|
  within_window(windows.last) do
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = page.save_screenshot("log/#{nome_cenario}.png")
    shot = Base64.encode64(File.open(screenshot, "rb").read)
    embed(shot, "image/png")
  end
end

at_exit do

  @infos = {
      'Aplicação' => "Nome da Aplicação",
      'Ambiente' => "#{AMBIENTE}",
      'Data e Hora' => DateTime.now.strftime("%d/%m/%Y %H:%M")
  }

  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.color = "indigo"
    config.report_title = "Nome do Sistema"
    config.additional_info = @infos
  end
  ReportBuilder.build_report
end
