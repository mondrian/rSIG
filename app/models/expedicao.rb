class Expedicao < ActiveRecord::Base
  has_one :minuta
  has_one :produto

  validates_presence_of :produto
  validates_presence_of :minuta
end
