class Servico < ApplicationRecord
  has_many :orcamentos

  accepts_nested_attributes_for :orcamentos, reject_if: proc { |attributes| attributes[:cidade].blank? },
  allow_destroy: true  
end
