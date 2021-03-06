class Product < ApplicationRecord
  scope :trendings, -> {where(:trending => true)}
  has_one_attached :picture
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price, presence: true
  belongs_to :user, dependent: :destroy
end
