#language:pt

Funcionalidade: Realizar o LOGIN no sistema SGE PROGNUM
        Para que eu possa realizar uma simulação de concessão de crédito
        Sendo um usuário de posto de atendimento
        Devo acessar o sistema com meu CPF e senha previamente cadastrado

        #Dados que se repetem devem ser colocados no contexto
        Contexto: Ver Página de Login do Sistema
                Dado que eu entrei na página principal

        #Exemplo de Cenário Simples
        @login_simples
        Cenario: Usuário Associado deve ser autorizado
                Quando eu faço login com meu "05064115164" e "Brasil07!"
                Então devo ver no menu da página inicial o meu CPF "05064115164"