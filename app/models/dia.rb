class Dia < ApplicationRecord
  self.table_name = 'dias'
  belongs_to :auto
end
