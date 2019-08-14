# frozen_string_literal: true

class Review < ApplicationRecord # :nodoc:
  # RATINGS = %w[0 1 2 3 4 5]

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5) }
  validates_associated :restaurant

  belongs_to :restaurant
end
