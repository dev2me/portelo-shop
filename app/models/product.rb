class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
