class Auto < ApplicationRecord
  has_many :dias
  belongs_to :persona
  belongs_to :marca
end
