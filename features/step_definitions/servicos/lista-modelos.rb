HTTParty::Basement.default_options.update(verify: false)


Dado('que queira visualizar os modelos cadastrados') do

end
Quando('informar a marca {int}') do |int|
  @response = HTTParty.get 'http://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=' + int.to_s
end

Então('o serviço retorna a lista de true da marca') do
  @response.body
end

Então('o serviço retorna a lista de {string} da marca') do |string|
  # log (@response.body.empty?)
  log (@response.body.to_s.nil?)
  if string == "true"
    expect(@response.body).not_to eq(nil)
  else

  end
end

Então('o serviço retorna a lista de false da marca') do

end
