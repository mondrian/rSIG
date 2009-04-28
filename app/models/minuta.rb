class Minuta < ActiveRecord::Base
  has_one :roteiro
  has_many :itensminutas

  validates_presence_of :data
end
