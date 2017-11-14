class Servico < ApplicationRecord
  has_many :orcamento, dependent: :destroy
end
