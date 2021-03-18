class Item < ApplicationRecord
  
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy
  belongs_to :genre
  
  attachment :image
  
  validates :name, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :price_excluding_tax, presence: true
end
