class User < ApplicationRecord
    validates :name, presence: true
    validates :ruby, presence: true
end
