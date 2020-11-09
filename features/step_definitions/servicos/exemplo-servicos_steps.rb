require 'httparty'
HTTParty::Basement.default_options.update(verify: false)

Quando("acessar a URL {string} para o funcionamento do serviço") do |url_servico|
  @url_servico = url_servico
end

Então("o serviço deverá apresentar a resposta de sucesso na comunicação") do
  response = HTTParty.get(@url_servico)
  expect(response.code).to eq(200).or eq(204)
end
