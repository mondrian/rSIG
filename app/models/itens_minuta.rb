class ItensMinuta < ActiveRecord::Base
  has_one :produto
  has_one :minuta

  validates_presence_of :produto_id
  validates_presence_of :qtde

end
