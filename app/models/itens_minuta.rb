class ItensMinuta < ActiveRecord::Base
  has_one :produto

  validates_presence_of :produto_id
  validates_presence_of :qtde

end
