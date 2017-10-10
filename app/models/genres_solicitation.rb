class GenresSolicitation < ApplicationRecord
  belongs_to :genre
  belongs_to :solicitation
end
