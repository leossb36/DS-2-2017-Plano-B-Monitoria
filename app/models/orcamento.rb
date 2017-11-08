class Orcamento < ApplicationRecord
  belongs_to :servicos
  accepts_nested_attributes_for :servicos
end
