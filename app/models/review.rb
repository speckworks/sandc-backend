class Review < ApplicationRecord
  belongs_to :user
  belongs_to :beach
  has_many :userbeaches, through: :user
  has_many :beaches, through: :userbeaches
end
