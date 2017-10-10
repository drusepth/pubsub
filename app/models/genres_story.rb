class GenresStory < ApplicationRecord
  belongs_to :genre
  belongs_to :story
end
