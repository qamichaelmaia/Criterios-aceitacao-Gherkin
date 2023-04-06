            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página configuração de produto da EBAC-SHOP

            Cenário: Detalhes da compra
            Então deve exibir as opções de "cor, tamanho e quantidade"
            Quando eu selecionar a ""cor, tamanho e quantidade do produto"
            Então aparecerá a mensagem de confirmação: "Comprar"

            Cenário: Limite de quantidade por produto
            Quando eu for selecionar a "quantidade de produtos" e for superior a "10 produtos"
            Então deve exibir uma mensagem de de alerta: "Não é permitido compra acima de 10 produtos"

            Cenário: Limpar configurações do pedido
            Quando o produto estiver configurado em "cor, tamanho e quantidade"
            E eu clicar na opção "limpar"
            Então o produto deve voltar ao seu estado ""original"

            Esquema do Cenário: Autenticação de compra
            Quando eu digitar o <cor>, <tamanho>, <quantidade>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                                       |
            | "orange" | "s"     | "5"        | "Comprar"                                      |
            | "blue"   | "m"     | "1"        | "Comprar"                                      |
            | "red"    | "xl"    | "12"       | "Não é permitido compra acima de 10 produtos!" |