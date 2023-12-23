class Share < ApplicationRecord
  
  validates :name, presence: true, length: { maximum: 25 }
  validates :cost, presence: true, numericality: {greater_than: 0 }
  # Здесь должны быть определены связи и валидации для модели Share
end