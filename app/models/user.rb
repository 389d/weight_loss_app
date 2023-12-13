class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :first_name, length: {maximum: 100 } 
    validates :last_name, length: {maximum: 100}
    validates :email, length: {maximum: 150}
    validates :email, format: URI::MailTo::EMAIL_REGEXP 
end
