class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :recipes, dependent: :destroy
  has_many :shopping_list_items

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
