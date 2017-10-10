class Publisher < ApplicationRecord
  has_many :solicitations
  has_many :genres, through: :solicitations
end
