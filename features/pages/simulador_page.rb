class Simulador
    include HTTParty
    base_uri "http://5b847b30db24a100142dce1b.mockapi.io/api/v1"
     
    def initialize(body)
      @options = {:body => body}
      @options2 ={}
    end
  
    def getSimulador (id)
      self.class.get("/simulador#{id}", @options2)
    end
  end