class User < ApplicationRecord
   has_many :reviews, dependent: :destroy
   has_many :userbeaches, dependent: :destroy

   has_secure_password

   validates_presence_of :name
   validates_uniqueness_of :name, :case_sensitive => false

   # def serializable_hash(opts)
   #    super(opts.merge(only: [:id, :name], include: :userbeaches, :reviews))
   # end
end

