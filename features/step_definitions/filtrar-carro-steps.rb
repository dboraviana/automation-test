Dado('que queira consultar carros') do
  @PO = PageObject.new
  @LC = ListaCarros.new
  sleep(10)
  @PO.clicar(@LC.button_ver_ofertas)
  @LC.aguardar_lista_carros
end

Quando('informar o filtro de modelo e versao') do

  @PO = PageObject.new
  @LC = ListaCarros.new
  @PO.clicar(@LC.li_marcas)
  @PO.clicar(@LC.li_td_modelos)
  sleep(3)
  @PO.clicar(@LC.li_modelo_especifico)
  sleep(3)
end

Então('o sistema deve apresentar os carros desejados') do
  @LC = ListaCarros.new
  @LC.validar_resultado
end