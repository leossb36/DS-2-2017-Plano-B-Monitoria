class Orcamento < ApplicationRecord
  has_many :servicos, dependent: :destroy, inverse_of: :orcamento
  accepts_nested_attributes_for :servicos
end
