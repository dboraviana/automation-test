class SimulacaoFormularioIdentificacaoPage < SitePrism::Page

  element :produto_combo, 'input[name=CO_GRUPO_TIPO_OPERACAO_CP]'
  element :modalidade_combo, 'input[name=CO_GRUPO_TIPO_OPERACAO_E]'
  element :cpf_input, 'input[name=NU_CPFCNPJ]'
  element :margem_consignavel_input, 'input[value="0,00"]'
  element :segmento_input, 'input[name=CO_LCOBR]'
  element :posto_graduacao_input, 'input[name=CO_CATEGORIA]'
  element :botao_prosseguir, "a[data-qtip='Obter os possíveis prazos para Empréstimos / Eletroeletrônicos']"
  element :botao_imprimirSimulacao, "a[data-qtip='Imprime os prazos da simulação']"
  element :modal_aviso_confirmacao, "span[class='x-btn-icon-el  ']"


  def labelTelaSimulacao
    find("div[class='x-component x-header-text-container x-panel-header-text-container x-panel-header-text-container-default-framed x-box-item x-component-default']", :text => "mensagem").click
  end

  def clicarBotaoProsseguir
    botao_prosseguir.click
    sleep 5
    if (botao_prosseguir.display)
      botao_prosseguir.click
    end
  end

  
  def clicarBotaoAlertaSimulacaoSIM
    find("[class='x-btn-button']", :text => "Sim").click
  end

  def preencherCamposComunsFluxo(matriz_dados)
    produto_combo.click.set(matriz_dados['Produto'])
    produto_combo.native.send_keys(:enter)
    modalidade_combo.click.set(matriz_dados['Modalidade'])
    modalidade_combo.native.send_keys(:enter)
    cpf_input.click.set(matriz_dados['CPF'])
    cpf_input.native.send_keys(:tab)
    sleep 10
  end

  def avancarModal
    find("[class='x-btn-button']", :text => "Sim").click
  end

  def preencherMargem
    margem_consignavel_input.click.set('500,00')
    margem_consignavel_input.native.send_keys(:tab)
  end

  def preencherSegmento(segmento)
    segmento_input.click.set("").set(segmento)
    segmento_input.native.send_keys(:tab)
  end


  def preencherPostoGraduacao(descPostoGraducao)
    posto_graduacao_input.click.set("").set(descPostoGraducao)
    posto_graduacao_input.native.send_keys(:enter)
    sleep 5
  end

  def confirmarModalAviso
    modal_aviso_confirmacao.click
  end

  def validarMensagemRestritiva
    find("div[class='x-form-display-field']", :text => "Alerta: MR0911113.3 - CLIENTE N?O POSSUI FAM, FAM-FAM?LIA OU FAB")
  end

  def validarMensagemAlerta
    find("div[class='x-form-display-field']", :text => "Alerta: MR09111222.1 - CLIENTE ? PARTICIPANTE DO FAM, FAM-FAM?LIA OU FAB.")
  end

  def verificaCpfPoupex
    find("div[class='x-form-display-field']", :text => "Alerta: MR17202422.3 - CPF DE EMPREGADO DA POUPEX")
  end

  def capturaMargemPoupex
    margem_consignavel_input.click
  #continuar
  end

  def verificarMargemPoupexRecuperada
    margem_consignavel_input['value'].should_not == "0,00"
    # page.first('input[name=VA_MARGEM_DIGITADA]').value.should_not == "0,00"
  end

  #####pensar em testes que verificam as informaçõea que são recebidas via integração


  end