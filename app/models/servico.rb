class Servico < ApplicationRecord
  belongs_to :orcamento, optional: true
end
