#language:pt

Funcionalidade: Realizar o LOGIN no sistema SGE PROGNUM
        Para que eu possa realizar uma simulação de concessão de crédito
        Sendo um usuário de posto de atendimento
        Devo acessar o sistema com meu CPF e senha previamente cadastrado

        #Dados que se repetem devem ser colocados no contexto
        Contexto: Acessar a tela de simulação
                Dado que eu acesse a tela de simulação

        @faz_login_sistema
        Cenario: Simulação de Empréstimos / Eletroeletrônicos (Concessão >> Simulador )
                Quando visualizar o conteudo "Simulação de Empréstimos / Eletroeletrônicos"
                Entao preencho os dados com um perfil XPTO

        #Cenario: Acessar a Simulação de Empréstimos / Eletroeletrônicos (Concessão >> Simulador )
        #        Quando eu faço login com meu "05064115164" e "Brasil07!"
        #        Então devo ver no menu da página inicial o meu CPF "05064115164"
        #        E navegar até a tela se simulação que possui o conteudo "Simulação de Empréstimos / Eletroeletrônicos"

