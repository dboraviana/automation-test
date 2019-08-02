require 'httparty'

#Adicionado para ignorar o Certificado SSL para realizar os testes
HTTParty::Basement.default_options.update(verify: false)

Quando("acessar a URL {string} para o funcionamento do serviço") do |url_servico|
  @url_servico = url_servico
end

Então("o serviço deverá apresentar a resposta de sucesso na comunicação") do
  response = HTTParty.get(@url_servico)
  #response.body
  # Se a resposta do serviço for 200 (Sucesso) ou 204 (Sucesso sem Conteudo)
  expect(response.code).to eq(200).or eq(204)
end