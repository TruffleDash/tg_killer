class User < ApplicationRecord
  has_many :chat_users
  has_many :chats, through: :chat_users
  has_many :messages
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
