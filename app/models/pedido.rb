class Pedido < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :vendedor, :class_name => 'Funcionario', :foreign_key => 'vendedor_id'
  belongs_to :operador, :class_name => 'Funcionario', :foreign_key => 'operador_id'
  belongs_to :telemarketing, :class_name => 'Funcionario', :foreign_key => 'telemarketing_id'
  belongs_to :transportadora
  belongs_to :minuta
  belongs_to :planodepagamento
  belongs_to :area
  has_many   :itemPedidos

  validates_presence_of :tipo
  validates_presence_of :data
  validates_presence_of :cliente_id
  validates_presence_of :valor

end
