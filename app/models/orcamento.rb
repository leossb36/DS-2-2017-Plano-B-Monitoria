class Orcamento < ApplicationRecord
  before_save :update_price
  belongs_to :servico

  def update_price
    if self.cidade == 'Gama'
      self.preco = self.servico.preco * 1.1
    elsif self.cidade == 'Taguatinga'
      self.preco = self.servico.preco * 1.2
    elsif self.cidade == 'Santa Maria'
      self.preco = self.servico.preco * 1.3
    end
  end
end
