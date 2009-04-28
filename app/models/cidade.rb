class Cidade < ActiveRecord::Base
    has_one :areas
end
