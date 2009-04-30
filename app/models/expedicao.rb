class Expedicao < ActiveRecord::Base
  has_one :minuta
  has_one :produto

  validates_presence_of :produto, => "Expedição sem Produto"
  validates_presence_of :minuta, => "Expedição sem Minuta"
end
