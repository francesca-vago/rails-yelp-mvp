# frozen_string_literal: true

class Restaurant < ApplicationRecord # :nodoc:
  CATEGORIES = %w[chinese italian japanese french belgian]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  has_many :reviews, dependent: :destroy
end
