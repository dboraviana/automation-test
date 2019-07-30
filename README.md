## Comando úteis para as implementações

### Para instalar uma nova GEM
```
$ gem install <nome da gem>
```

### Atualizando as gemas do Seu Sistema Operacional
```
$ bundle update
$ gem update
```

# Comandos úteis para manipulação de elementos

##### Quando preciso verificar se existe um determinado botão na página
`expect(page).to have_button('Texto do Botão')` ou `expect(page).to have_button('#id_componente')`
```
Ex: expect(page).to have_button('Salvar')
```
##### Quando preciso verificar se não existe um determinado botão na página
`expect(page).to have_no_button('Texto do Botão')` ou `expect(page).to have_no_button('#id_componente')`
```
Ex: expect(page).to have_no_button('Salvar')
```
##### Quando preciso verificar se existe uma determinada mensagem na página
`expect(page).to have_content “mensagem”`
```
Ex: expect(page).to have_content “Bem vindo ao nosso Portal de Atendimento”
```
##### Quando preciso verificar se a página possui um botão ou link com uma determinada mensagem
`expect(page).to have_selector(:link_or_button, "mensagem")`
```
Ex: expect(page).to have_selector(:link_or_button, "Baixe o PDF aqui")
```
##### Clicar em um determinado botão presente na Tela (Pelo texto do botão)
`click_button 'Texto no Botão'`
```
Ex: click_button 'Acessar'
Ex: click 'Acessar'
```
##### Clicar em um determinado botão presente na Tela (Pelo identificador CSS)
`find('#id_componente').click`
```
Ex: find('#btn-login').click
```
##### Clicar em um determinado link presente na Tela (Pelo texto do link)
`click_link 'Texto do link'`
```
Ex: click_link 'Baixe o PDF aqui'
Ex: click 'Baixe o PDF aqui'
```
##### Buscar um componente do tipo INPUT pelo Seletor CSS e atribuir um valor
`find('#id_componente').set "valor"`
```
Ex: find('#senha').set senha
Ex: find('.obrigatotio').set "Este campo é de preenchimento obrigatório"
Ex: find('input[id=email]').set usuario
Ex: find('input[name=senha]').set senha
```
#### Para Marcar ou desmarcar um Checkbox
Marcar um checkbox `check('checkbox')`
Desmarcar um checkbox `uncheck('checkbox')`
```
Ex: check('#receber_noticias')
Ex: uncheck('#receber_noticias')
```
#### Escolher um Radio Button (Opção 1)
`fill_in('Texto Label do Radio', :with => 'Texto do radio')`
```
Ex: fill_in('Sexo', :with => 'Masculino')
```
#### Escolher um Radio Button (Opção 2)
`choose('#id_componente')`
```
Ex: choose('#turno_trabalho')
```
#### Escolher uma opção dentro do Combobox
`select('option', :from=>'#id_componente')` e `unselect`
```
Ex: select('Brasília - DF', :from=>'#cidades')
```
#### Anexar uma imagem
`attach_file('name_component', 'path_to_image')` ou `find('form input[type="file"]').set('path/to/file')`
```
Ex: attach_file('imagem', 'c:/imagens/minha_casa.png')
Ex: attach_file('data-file', 'c:/imagens/lista_cidades.csv')
Ex: find('form input[type="file"]').set('c:/imagens/lista_cidades.csv')
```
#### Executar um código javascript dentro da página
`page.execute_script("codigo javascript")`
```
Ex: page.execute_script("$('#area button.primary').click()")
```

Página de referência: `https://devhints.io/capybara`
