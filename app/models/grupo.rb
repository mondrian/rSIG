class Grupo < ActiveRecord::Base

  validates_presence_of :descricao, :margem_lucro, :unificado
  validates_uniqueness_of :descricao

end
