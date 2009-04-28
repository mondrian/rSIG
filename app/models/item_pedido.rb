class ItemPedido < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :produto

  validates_presence_of :quantidade
  validates_numericality_of :quantidade

end
