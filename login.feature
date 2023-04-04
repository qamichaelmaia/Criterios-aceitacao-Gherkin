            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "michael@ebac.com.br"
            E a senha "154575"
            Então deve exibir uma mensagem de boas vindas: "Olá Michael!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "ichael@ebac.com.br"
            E a senha "154575"
            Então deve exibir uma mensagem de de alerta: "Usuário ou senha inválidos!"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "michael@ebac.com.br"
            E a senha "1023448"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos!"

            Esquema do Cenário: Autenticar usuário
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibit a <mensagem> de sucesso

            Exemplos:
            | usuario               | senha     | mensagem                      |
            | "michael@ebac.com.br" | "154575"  | "Olá Michael!"                |
            | "ichael@ebac.com.br"  | "154575"  | "Usuário ou senha inválidos!" |
            | "michael@ebac.com.br" | "1023448" | "Usuário ou senha inválidos!" |

