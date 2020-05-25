# simulador-investimento-poupanca
Projeto de automacao de testes Web e de serviços para o simulador de investimento de poupanca do Sicredi. Utilizando as tecnologias Ruby, Capybara, Cucumber e Httparty.

### Setup

1. Dependencias globais
    * Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
    * Ou Install Ruby with [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    
    * Install bundler
    ```
    $ gem install bundler
    ```

2. Dependencias
	* Instalacao de pacotes
	```
	$ bundle install
	```


### Cenarios mapeados

https://github.com/jadersaldanha/simulador-investimento-poupanca/blob/master/features/specifications/simulacao-investimento.feature


### Rodando os testes

* Pela linha de comando
	```
    (Para rodar todos os testes)
    $ cucumber
    (Para rodar somente um teste)
	$ cucumber -t @test_name
	```

### Pode ser executado e testado no Circle CI:

https://app.circleci.com/pipelines/github/jadersaldanha/simulador-investimento-poupanca

### Resources
##### [SeleniumHQ](http://www.seleniumhq.org/docs/)

##### [Cucumber](https://cucumber.io/docs/reference)

##### [Ruby](http://ruby-doc.org/)
