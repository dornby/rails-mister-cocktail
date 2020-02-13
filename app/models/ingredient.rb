# frozen_string_literal: true

# Comment
class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true, uniqueness: true
end
