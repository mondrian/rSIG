class Area < ActiveRecord::Base
    has_one :cidade
    has_one :roteiro

    validates_presence_of :descricao
    validates_presence_of :cidade_id
    validates_presence_of :roteiro_id
end
