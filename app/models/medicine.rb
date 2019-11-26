class Medicine < ApplicationRecord
  has_many :users, through: :user_medicines
  has_many :user_medicines
  accept_nested_attributes_for :user_medicines
end
