class Parcela < ApplicationRecord
    has_many :plantacions, dependent: :destroy
end
