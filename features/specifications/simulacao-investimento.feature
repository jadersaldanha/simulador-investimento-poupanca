# language: pt

@simulador
Funcionalidade: Simulação de investimento em Poupança.
    Com o propósito de Simular um Investimento na Poupança como um Associado,
    eu gostaria de preencher o formulário de simulação
    e ver a tabela de resultado com Mês e Valor.

    @get_comsucesso
    Cenario: Realizar um Get com sucesso na API do Simulador de Investimento
        Dado o endereco da API do Simulador de Investimento
        Quando realizar uma requisicao do tipo Get
        Entao a API irá retornar os dados do Simulador de Investimento respondendo o código 200

    @get_semsucesso
    Cenario: Realizar um Get sem sucesso na API do Simulador de Investimento
        Dado o endereco da API do Simulador de Investimento
        Quando realizar uma requisicao do tipo Get invalida
        Entao o retorno da requisicao sera 404

    @simulacao_sucesso
    Cenario: Simulacao de investimento com o preenchimento de campos corretos
        Dado que estou na pagina de simulacao de investimento em poupanca
        Quando informo o perfil "para voce"
        E preencho o valor de aplicacao em "1000"
        E preencho a quantidade que desejo poupar em "100,00"
        E preencho o tempo que desejo poupar em "12"
        E seleciono meses
        E clico em Simular
        Entao devo ver a mensagem "Em 12 meses você terá guardado" o valor de "2.233"

    @simulacao_semsucesso
    Cenario: Simulacao de investimento com valor inferior a 20,00
        Dado que estou na pagina de simulacao de investimento em poupanca
        E preencho o valor de aplicacao em "1" no valor aplicado
        E preencho "1" no valor que quero poupar todo mes 
        Entao a mensagem "Valor mínimo de 20.00" deve aparecer na tela