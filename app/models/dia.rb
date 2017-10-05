class Dia < ApplicationRecord
  self.table_name = 'dias'
  belongs_to :auto
  validates :dia, numericality: {message: "debe agregar un numero"}
end
