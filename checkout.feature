            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Cadastramento - Checkout
            Quando eu digitar o nome "Michael" e o sobrenome "Maia"
            E preencher os campos obrigatórios, "país, enredeço, cidade, cep, telefone e e-mail"
            Então deve exibir uma mensagem de confirmação: "Finalizar compra!"

            Cenário: Formato de e-mail inválido
            Quando eu digitar no campo e-mail "michael@.com"
            Então deve exibir uma mensagem de de alerta: "Formato de email não suportado, use (Ex: michael@ebac.com.br)"

            Cenário: Campos obrigatórios vazios
            Quando eu deixar algum destes campos vazios "nome, sobrenome, país, endereço, cidade, cep, telefone e e-mail"
            E tentar finalizar o cadastramento
            Então deve exibir uma mensagem de de alerta: "Por favor, preencha os campos obrigatórios!"

            Esquema do Cenário: Autenticar checkout
            Quando eu digitar o <nome e sobrenome> <pais e endereco> <cidade e cep>
            E o <telefone e email>
            Então deve exibit a <mensagem> de sucesso

            Exemplos:
            | nome e sobrenome | pais  e endereço | cidade e cep           | telefone e email                   | Mensagem                                    |
            | "Michael Maia"   | "Brasil/Bahia"   | "Jacobina - 44700 000" | 71 999348625 - michael@ebac.com.br | Finalizar compra!                           |
            | "Michael Maia"   | "Brasil/Bahia"   | "Jacobina - 44700 000" | 71 999348625 - michael@.com        | Formato de email não suportado!             |
            | "Michael Maia"   | "Brasil/Bahia"   | "                    " | 71 999348625 - michael@ebac.com.br | Por favor, preencha os campos obrigatórios! |
