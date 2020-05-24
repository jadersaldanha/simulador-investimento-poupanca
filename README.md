# simulador-investimento-poupanca
Projeto de automacao de testes Web e de serviços para o simulador de investimento de poupanca do Sicredi. Utilizando as tecnologias Ruby, Capybara, Cucumber e Httparty.

### Setup

1. Global Dependencies
    * Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
    * Or Install Ruby with [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    
    * Install bundler (Sudo may be necessary)
    ```
    $ gem install bundler
    ```

2. Dependencies
	* Install packages (Use sudo if necessary)
	```
	$ bundle install
	```

### Running Tests

* In command line
	```
	$ cucumber -t @test_name
	```

Circle CI:

https://app.circleci.com/pipelines/github/jadersaldanha/simulador-investimento-poupanca

### Resources
##### [SeleniumHQ](http://www.seleniumhq.org/docs/)

##### [Cucumber](https://cucumber.io/docs/reference)

##### [Ruby](http://ruby-doc.org/)
