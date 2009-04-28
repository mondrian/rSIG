class ItensMinuta < ActiveRecord::Base

  has_one :produto
  belongs_to :minuta

  validates_presence_of :produto_id
  validates_presence_of :qtde

end
