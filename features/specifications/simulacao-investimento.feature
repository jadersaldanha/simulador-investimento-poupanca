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
