class Pedido < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :funcionario, :foreign_key=> 'vendedor_id'
  has_many   :itemPedidos

  validates_presence_of :tipo
  validates_presence_of :data
  validates_presence_of :cliente_id
  validates_presence_of :valor

end
