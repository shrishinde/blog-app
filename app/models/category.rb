class Category < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 10}
  validates_uniqueness_of :name
end