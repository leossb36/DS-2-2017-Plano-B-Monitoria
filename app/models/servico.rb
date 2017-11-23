class Servico < ApplicationRecord
  has_many :orcamento, dependent: :destroy
  belongs_to :user
end
