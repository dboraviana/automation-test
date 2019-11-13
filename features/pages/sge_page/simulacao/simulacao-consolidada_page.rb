class TrataPropostaPage < SitePrism::Page
  include Capybara::DSL

  element :utaname_field, "input[uta='COD_ENT_CORRETAGEM']"
  element :motivoemprestimo_field, "input[motivo_emprestimo='CO_MOTIVO_EMPRESTIMO']"
  element :observacao_field, "input[observacao='TE_OBS_MOTIVO_EMPRESTIMO']"
  element :tipodocumento_field, "input[tipo_documento='PESSOA$CO_TIPO_RG']"
  element :numerodocumento_field, "input[nro_documento='PESSOA$NU_IDENTIDADE']"
  element :orgaoemissor_field, "input[orgao_emissor='PESSOA$NO_ORGE']"
  element :uf_combo, "input[uf='PESSOA$CO_UFIDENTIDADE']"
  element :dataemissao_field, "input[data_emissao='PESSOA$DT_IDENTIDADE']"
  element :codigoreserva_field, "input[codigo_reserva='OPERACAO_CREDITO$CO_MARGEM_CONSIGNADA']"


  def preincluiProposta(table)
    find("a[class='x-btn x-unselectable x-btn-toolbar x-box-item x-toolbar-item x-btn-default-toolbar-small x-icon-text-left x-btn-icon-text-left x-btn-default-toolbar-small-icon-text-left']", :text => "Prosseguir").click
    sleep 5
    find("a[class='x-btn x-unselectable x-btn-toolbar x-box-item x-toolbar-item x-btn-default-toolbar-small x-icon-text-left x-btn-icon-text-left x-btn-default-toolbar-small-icon-text-left']", :text => "Pré-Incluir Proposta").click
    utaname_field.set(table['uta'])
    motivoemprestimo_field.set(table['motivo_emprestimo'])

  end

  def avancaPreInclusaoContrato
    find("span[class='x-btn-inner x-btn-inner-center']", :text => "Pré-incluir Proposta").click
    sleep 5
    if (find("span[class='x-btn-inner x-btn-inner-center']", :text => "Pré-incluir Proposta").display)
      find("span[class='x-btn-inner x-btn-inner-center']", :text => "Pré-incluir Proposta").click
    end
  end

  def atualizaCadastro (table)
    #Atualiza o documento de identidade nos dados cadastrais do proponente
    find("span[class='x-menu-item-text']", :text => "Dados do Proponente").click
    find("span[class='x-menu-item-text']", :text => "Alterar").click
    find("span[class='x-btn-inner x-btn-inner-center']", :text => "Abrir").click
    tipodocumento_field.set(table['tipo_documento'])
    tipodocumento_field.set(table['nro_documento'])
    orgaoemissor_field.set(table['orgao_emissor'])
    uf_combo.set(table['uf'])
    dataemissao_field.set(table['data_emissao'])
    find("span[class='x-btn-inner x-btn-inner-center']", :text => "Salvar").click
  end

  def implantaContrato(table)
    #Implanta o contrato
    find("span[class='x-menu-item-text']", :text => "Liberação").click
    find("span[class='x-btn-inner x-btn-inner-center']", :text => "Implantar Contrato").click
    codigoreserva_field.set(table['profissao'])
    find("span[class='x-btn-inner x-btn-inner-center']", :text => "Confirmar Implantação do Contrato").click

  end

end





# def preincluiProposta(uta, motivo_emprestimo)
#   find("span[class='x-btn-inner x-btn-inner-center']", text => 'Pré-incluir Proposta').click
#   utaname_field.set(uta)
#   motivoemprestimo_field.set(motivo_emprestimo)
#
#
# end

# def implantaContrato (tipo_documento, nro_documento, orgao_emissor, uf, data_emissao, codigo_reserva)
#   #Atualiza o documento de identidade nos dados cadastrais do proponente
#   find("span[class='x-menu-item-text']", text => 'Dados do Proponente').click
#   find("span[class='x-menu-item-text']", text => 'Alterar').click
#   find("span[class='x-btn-inner x-btn-inner-center']", text => 'Abrir').click
#   tipodocumento_field.set(tipo_documento)
#   tipodocumento_field.set(nro_documento)
#   orgaoemissor_field.set(orgao_emissor)
#   uf_combo.set(uf)
#   dataemissao_field.set(data_emissao)
#   find("span[class='x-btn-inner x-btn-inner-center']", text => 'Salvar').click
#
#   #Implanta o contrato
#   find("span[class='x-menu-item-text']", text => 'Liberação').click
#   find("span[class='x-btn-inner x-btn-inner-center']", text => 'Implantar Contrato').click
#   codigoreserva_field.set(codigo_reserva)
#   find("span[class='x-btn-inner x-btn-inner-center']", text => 'Confirmar Implantação do Contrato').click
#
# end
