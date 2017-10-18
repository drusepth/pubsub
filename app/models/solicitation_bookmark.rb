class SolicitationBookmark < ApplicationRecord
  belongs_to :user
  belongs_to :solicitation
end
