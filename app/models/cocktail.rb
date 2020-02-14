# frozen_string_literal: true

# Comment
class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :restrict_with_error
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :photo, attached: true
end
