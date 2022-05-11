class User < ApplicationRecord
    validates :username, presence: true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness: true
    validates :password, presence: true
    validates :password, length: { minimum: 5}

    has_many :posts
    has_many :comments
end
