class Review < ApplicationRecord
  belongs_to :restaurant

  @allowed_ratings = [0, 1, 2, 3, 4, 5]

  validates :rating, presence: true, inclusion: { in: @allowed_ratings }, numericality: { only_integer: true }
  validates :content, presence: true

end
