class Publisher < ApplicationRecord
  has_many :solicitations
  has_many :genres, through: :solicitations

  has_many :comments
end
