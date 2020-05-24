Dado("que estou na pagina de simulacao de investimento em poupanca") do
    visit '/simulador-investimento-poupanca'
  end
  
  Quando("preencho o valor de aplicacao em {string}") do |string|
    fill_in 'valorAplicar', with: string
  end
  
  Quando("preencho a quantidade que desejo poupar em {string}") do |string|
    fill_in 'valorInvestir', with: string
  end
  
  Quando("preencho o tempo que desejo poupar em {string}") do |string|
    fill_in 'tempo', with: string
  end
  
  Quando("seleciono meses") do
    # pending
  end
  
  Quando("clico em Simular") do
    find('ul > li.simular > button', visible: false).click
  end
  
  Entao("devo ver a mensagem {string} o valor de {string}") do |expected_text, string|
    element = find('div.blocoResultadoSimulacao > span.texto', text: 'Em 12 meses você terá guardado')
    element.text.include? expected_text
    element.text.include? string
  end
  
  Dado("preencho o valor de aplicacao em {string} no valor aplicado") do |string|
    fill_in 'valorAplicar', with: string
  end
  
  Dado("preencho {string} no valor que quero poupar todo mes") do |string|
    fill_in 'valorInvestir', with: string
  end
  
  Entao("a mensagem {string} deve aparecer na tela") do |string|
    # pending # valorAplicar-error Write code here that turns the phrase above into concrete actions
    element = find('#valorAplicar-error', visible: false)
    element.text.include? string
end
  