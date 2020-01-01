class Beach < ApplicationRecord    
    belongs_to :reviews
    has_many :userbeaches
end
