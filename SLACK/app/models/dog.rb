class Dog < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  acts_as_favoritable
  validates :name, presence: true
  validates :gender, presence: true
  validates :size, presence: true
  validates :breed, presence: true
  validates :energy_level, presence: true
  validates :vaccinated, presence: true
  validates :neutered, presence: true
  validates :suburb, presence: true
end
