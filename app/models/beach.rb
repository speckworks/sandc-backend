class Beach < ApplicationRecord    
    has_many :reviews
    has_many :userbeaches
    has_many :users, through: :userbeaches 

end
