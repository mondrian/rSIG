class Cidade < ActiveRecord::Base
  has_many :areas

  validates_presence_of :descricao
end
