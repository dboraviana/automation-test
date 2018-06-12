#language:pt

Funcionalidade: Realizar o LOGIN no sistema XPTO
        Para que eu possa cadastrar e gerenciar minhas tarefas
        Sendo um usuário
        Posso acessar o sistema com meu CPF e senha previamente cadastrado

        #Dados que se repetem devem ser colocados no contexto
        Contexto: Ver Página Inicial do Sistema
                Dado que eu entrei na página principal

        #Exemplo de Cenário Simples
        @logout_simples
        Cenario: Usuário Associado deve ser autorizado (Ágil)
                Quando eu faço login com meu "07937776153" e "12345678"
                Então devo ver a mensagem "Minhas Reservas"

        #Exemplo de Fluxos Alternativos
        Esquema do Cenário: Autenticação com usuários ou senha inválidos
                Quando eu faço login com meu <cpf> e <senha>
                Então devo ver a mensagem <mensagem>

                Exemplos:
                        | cpf           | senha        | mensagem |
                        | "07937776153" | "87654321"   | "Credencial inválida. Atenção: Após 10 tentativas incorretas o usuário é bloqueado por 30 minutos.."   |
                        | "07937456153" | "12345678"   | "Dados não localizados"                                                                                |
                        | "07937776153" | "87654321"   | "Credencial inválida. Atenção: Após 10 tentativas incorretas o usuário é bloqueado por 30 minutos.."   |
                        | ""            | ""           | "Informe o login e a senha para acessar o sistema."                                                        |
                        | "07937776153" | ""           | "O Campo Senha é de preenchimento obrigatório."                                                        |
                        | ""            | "87654321"   | "O Campo CPF é de preenchimento obrigatório."                                                          |

        #Exemplo de Fluxos Básicos
        @logout_completo
        Esquema do Cenário: Autenticação com usuários válidos por perfil <nome>
                Quando eu faço login com meu <cpf> e <senha> e meu perfil é <perfil>
                Então devo ser autenticado com sucesso e visualizar o nome <nome> no menu

                Exemplos:
                        | cpf           | senha                 | perfil                        | nome                         |
                        | "71225919134" | "#senhadificil123#"   | "Administrador"               | "ASSEJUS Administrador"      |
                        | "07937776153" | "12345678"            | "Associado"                   | "Alysson Vicuña de Oliveira" |
                        | "26920755602" | "12345678"            | "Funcionário Financeiro"      | "Funcionário Padrão"         |