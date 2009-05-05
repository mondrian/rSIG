class Cliente < ActiveRecord::Base

  has_many :pedidos
  has_many :notasfiscais
  belongs_to  :cidade
  has_one  :regiao_entrega, :class_name => 'Regiao', :foreign_key => 'regiao_entrega_id'
  has_one  :cidade_entrega, :class_name => 'Cidade', :foreign_key => 'cidade_entrega_id'
  has_one  :area
  
  validates_presence_of :razao_social, :message => "Informe a RAZÃO SOCIAL"
  validates_presence_of :nome_fantasia, :message => "Informe o Nome de Fantasia"
  validates_uniqueness_of :cpf_cnpj, :message => 'CNPJ/CPF duplicado'
end
