Dado("o endereco da API do Simulador de Investimento") do
    # no simulador_page
end

Quando("realizar uma requisicao do tipo Get") do
    $get = @simulador.getSimulador($id)
  end
  
  Entao("a API irá retornar os dados do Simulador de Investimento respondendo o código {int}") do |int|
    expect($get.code).to eq(int)
    expect($get.message).to eq("OK")

    puts "ID    : #{$get["id"]}"
    puts "Meses  : #{$get["meses"]}"
    puts "Valor  : #{$get["valor"]}"
    puts "Status Code: #{$get.code}"
  end
  
  Quando("realizar uma requisicao do tipo Get invalida") do
    $get = @simulador.getSimulador(2)
  end
  
  Entao("o retorno da requisicao sera {int}") do |status_code|
    puts $get.code
    expect($get.code).to eq status_code
  end