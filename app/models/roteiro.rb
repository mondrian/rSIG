class Roteiro < ActiveRecord::Base
  has_one :funcionario
  has_one :regiao
  has_one :area

  validates_presence_of :descricao
  validates_presence_of :funcionario_id
  validates_presence_of :regiao_id
  validates_presence_of :area_id

end
