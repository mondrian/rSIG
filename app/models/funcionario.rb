class Funcionario < ActiveRecord::Base

  validates_presence_of :tipo, :nome
  validates_presence_of :endereco
  validates_uniqueness_of :cpf, :rg


end
