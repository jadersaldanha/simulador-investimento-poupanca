Before '@simulador' do

    # caso seja necessario incorporar dados aleatorios no body da requisicao
    @nome = Faker::Company.name
    @cidade = Faker::Address.city

    @body = {
        "nome": @nome,
        "cidade": @cidade
    }

    @simulador = Simulador.new(@body)
    
end