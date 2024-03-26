class Category < ApplicationRecord
  has_many :categories, class_name: "Category",
                          foreign_key: "parent_category_id"
  has_many :options

  belongs_to :parent_category, class_name: "Category", optional: true
  validates :category_name, presence: true, uniqueness: true
end
