class MetaProduto < ActiveRecord::Base
  validates_presence_of :mes
  validates_presence_of :ano
  validates_presence_of :qtd_dias_uteis
  validates_presence_of :data_ini
  validates_presence_of :data_fim
end
