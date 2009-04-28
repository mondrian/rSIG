class Minuta < ActiveRecord::Base
  has_one :roteiro
  has_many :itens

  validates_presence_of :data
end
