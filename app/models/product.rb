class Product < ApplicationRecord
  belongs_to :category
  has_many :product_items
  validates :name, :description, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "name", "updated_at"]
  end
  
end
