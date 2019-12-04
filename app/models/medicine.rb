class Medicine < ApplicationRecord
  belongs_to :users
  has_many :user_medicines
end
