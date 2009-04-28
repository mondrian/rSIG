class Area < ActiveRecord::Base
    belongs_to :cidade
    belongs_to :roteiro

    validates_presence_of :descricao
    validates_presence_of :cidade_id
    validates_presence_of :roteiro_id
end
