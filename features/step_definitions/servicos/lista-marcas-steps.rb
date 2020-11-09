require 'httparty'
HTTParty::Basement.default_options.update(verify: false)
response = HTTParty.get 'http://desafioonline.webmotors.com.br/api/OnlineChallenge/Make'

Dado('que queira visualizar as marcas cadastradas') do

end

Quando('acionar serviço que retorna tais informações') do
  expect(response.code).to eq(200).or eq(204)
end

Então('o serviço retorna a lista de marcas cadastradas') do
  expect(response.body).not_to eq(nil)
end
