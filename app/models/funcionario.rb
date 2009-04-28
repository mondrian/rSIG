class Funcionario < ActiveRecord::Base
  has_many :notasfiscais
  belongs_to :cidade

  validates_presence_of :tipo, :nome
  validates_presence_of :endereco
  validates_uniqueness_of :cpf, :rg


end
