class Orcamento < ApplicationRecord
  before_save :update_price
  belongs_to :servico
  belongs_to :user

  def update_price
    if self.servico.nome == 'Aulas Monitoradas'
      if self.cidade == 'Gama' || self.cidade == 'Santa Maria'
        self.preco = self.servico.preco + 5.0
      elsif self.cidade == 'Taguatinga' || self.cidade == 'Ceilândia' || self.cidade == 'Samambaia'
        self.preco = self.servico.preco + 15.0
      elsif self.cidade == 'Águas Claras' || self.cidade == 'Asa Norte' || self.cidade == 'Asa Sul' || self.cidade == 'Sudoeste'
        self.preco = self.servico.preco + 20
      end
    elsif self.servico.nome == 'Aula Pré Prova'
      if self.cidade == 'Gama' || self.cidade == 'Santa Maria'
        self.preco = self.servico.preco + 5.0
      elsif self.cidade == 'Taguatinga' || self.cidade == 'Ceilândia' || self.cidade == 'Samambaia'
        self.preco = self.servico.preco + 15.0
      elsif self.cidade == 'Águas Claras' || self.cidade == 'Asa Norte' || self.cidade == 'Asa Sul' || self.cidade == 'Sudoeste'
        self.preco = self.servico.preco + 20
      end
    else
      if self.cidade == 'Gama' || self.cidade == 'Santa Maria'
        self.preco = self.servico.preco + 5.0
      elsif self.cidade == 'Taguatinga' || self.cidade == 'Ceilândia' || self.cidade == 'Samambaia'
        self.preco = self.servico.preco + 15.0
      elsif self.cidade == 'Águas Claras' || self.cidade == 'Asa Norte' || self.cidade == 'Asa Sul' || self.cidade == 'Sudoeste'
        self.preco = self.servico.preco + 20
      end  
    end
  end

end
