class ListaCarros < SitePrism::Page
  include Capybara::DSL

  element :button_ver_ofertas, "div a.Button:nth-child(2)"
  element :li_carros, "main div h1"
  element :li_marcas, "div.Filters__container__group div.CarouselContainer__wrap a small", :text => "honda", :visible => false
  element :li_td_modelos, "div.Filters__make-block div div:nth-child(2)", :visible => false
  element :li_modelo_especifico, "div.Filters__container__group a", :text => "CITY"
  element :ul_resultado, "ul#FilterResultContainer li a", :text => "HONDA CITY"


  def initialize
    @PO = PageObject.new
  end


  def aguardar_lista_carros
    wait_until_li_carros_visible
  end

  def validar_resultado
    wait_until_ul_resultado_visible
  end
end