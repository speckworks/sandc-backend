class User < ApplicationRecord
   has_many :reviews
   has_many :userbeaches
end
