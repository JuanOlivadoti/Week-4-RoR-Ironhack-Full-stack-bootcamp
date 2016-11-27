class Bid < ApplicationRecord
	belongs_to :user
  belongs_to :product
	validates :amount, presence: true
	validates :product, presence: true
	validates :user_id, presence: true
end
