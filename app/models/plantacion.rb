class Plantacion < ApplicationRecord
  belongs_to :parcela
  has_many :intervencions, dependent: :destroy
end
