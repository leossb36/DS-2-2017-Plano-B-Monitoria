class Orcamento < ApplicationRecord
  belongs_to :servico, inverse_of: :orcamentos
end
