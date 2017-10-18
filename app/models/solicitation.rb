class Solicitation < ApplicationRecord
  belongs_to :publisher

  has_many :genres_solicitations
  has_many :genres, through: :genres_solicitations

  scope :of_genre, -> (genre_id) do
    where(id: GenresSolicitation.where(genre_id: genre_id).pluck(:solicitation_id))
  end

  scope :accepting_wordcount, -> (wordcount) do
    where('minimum_wordcount <= ?', wordcount)
    .where('maximum_wordcount >= ?', wordcount)
  end

  scope :not_open_yet, -> do
    where('starts_at > ?', DateTime.current)
  end

  scope :open, -> do
    where('starts_at <= ?', DateTime.current)
    .where('ends_at > ?', DateTime.current)
  end

  scope :open_now_or_in_the_future, -> do
    where('ends_at > ?', DateTime.current)
  end

  scope :already_closed, -> do
    where('ends_at < ?', DateTime.current)
  end

end
