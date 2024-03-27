class ProductAttribute < ApplicationRecord
  belongs_to :attribute_name
  belongs_to :product_item
  validates :attr_value, presence: true
end
