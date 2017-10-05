class Marca < ApplicationRecord
  has_many :autos
  validates :nombre , presence: {message: 'debe haber un nombre'}
end
