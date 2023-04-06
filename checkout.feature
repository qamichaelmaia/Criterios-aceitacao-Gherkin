            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer o meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Cadastramento - Checkout
            Quando eu digitar o nome "Michael" e o sobrenome "Maia" em seguida preencher os campos, "país, enredeço, cidade, cep, telefone e e-mail"
            Então deve exibir uma mensagem de confirmação: "Finalizar compra!"

            Cenário: Formato de e-mail inválido
            Quando eu digitar no campo e-mail "michael@.com"
            Então deve exibir uma mensagem de de alerta: "Formato de email não suportado, use (Ex: michael@ebac.com.br)"

            Cenário: Campos obrigatórios vazios
            Quando eu deixar algum destes campos vazios "nome, sobrenome, país, endereço, cidade, cep, telefone e e-mail"
            Então deve exibir uma mensagem de de alerta: "Por favor, preencha os campos obrigatórios!"

            Esquema do Cenário: Autenticar checkout
            Quando eu digitar o <nome>, <sobrenome>, <pais>, <endereco> <cidade>, <cep>, <telefone>, <email>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | nome      | sobrenome | país     | endereço          | cidade     | cep         | telefone        | email                 | mensagem                                      |
            | "Michael" | "Maia"    | "Brasil" | "Rua do Cajueiro" | "Jacobina" | "44700-000" | "71 99934-8625" | "michael@ebac.com.br" | "Finalizar compra!"                           |
            | "Michael" | "Maia"    | "Brasil" | "Rua do Cajueiro" | "Jacobina" | "44700-000" | "71 99934-8625" | "ichael@.com.br"      | "Formato de email não suportado!"             |
            | "Michael" | "Maia"    | "      " | "Rua do Cajueiro" | "Jacobina" | "44700-000" | "71 99934-8625" | "michael@ebac.com.br" | "Por favor, preencha os campos obrigatórios!" |
