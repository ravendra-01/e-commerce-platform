class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :user
  has_many :images, as: :imageable
  validates :title, :rating, presence: true
end
