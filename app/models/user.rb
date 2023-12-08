class User < ApplicationRecord
    validates :first_name, length: {maximum: 100 } 
    validates :last_name, length: {maximum: 100}
    validates :email, length: {maximum: 150}
    validates :email, format: URI::MailTo::EMAIL_REGEXP 
end
