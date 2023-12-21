class ChatMessage < ApplicationRecord
  validates :message, presence: true
end
