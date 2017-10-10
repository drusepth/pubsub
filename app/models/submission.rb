class Submission < ApplicationRecord
  belongs_to :story
  belongs_to :solicitation
end
