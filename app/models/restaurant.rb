class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian brazilian] }
  validates :image, presence: true

  has_many :reviews, dependent: :destroy

end
