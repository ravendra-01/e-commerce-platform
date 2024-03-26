class Option < ApplicationRecord
  belongs_to :category
  validates :option_name, presence: true
end
