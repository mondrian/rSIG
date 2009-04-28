class Cliente < ActiveRecord::Base

  has_many :pedidos
  has_many :notasfiscais
  
  validates_presence_of :razao_social, :nome_fantasia, :documento, :endereco, :cep, :referencia, :fone_pessoal, :fone_comercial, :fone_celular
  validates_presence_of :endereco_entrega, :referencias_bancaria, :referencias_comerciais, :data_nascimento, :nome_comprador, :limite_credito
  validates_presence_of :saldo_devedor, :status, :prazo_medio_maximo, :data_inclusao_prazo_medio, :tipo_cliente
  validates_uniqueness_of :cpf_cnpj, :message => 'CNPJ/CPF duplicado'  
  validates_length_of :fone_pessoal, :minimum => 8, :too_short => "No mínimo 8"
end
