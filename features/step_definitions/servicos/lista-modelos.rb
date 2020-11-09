HTTParty::Basement.default_options.update(verify: false)


Dado('que queira visualizar os modelos cadastrados') do

end

# Quando('informar a marca {idMarca}') do |idMarca|
#
#   response = HTTParty.get 'http://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=' + idMarca
#   puts response.body
#
# end

Quando('informar a marca {int}') do |int|
  @response = HTTParty.get 'http://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=' + int.to_s
end

Então('o serviço retorna a lista de true da marca') do
  puts @response.body
end

Então('o serviço retorna a lista de false da marca') do
  pending # Write code here that turns the phrase above into concrete actions
end
