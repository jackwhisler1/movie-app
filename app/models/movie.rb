class Movie < ApplicationRecord
  has_many :actors

  has_many :movie_genre
  has_many :genres, through: :movie_genre

  # validates :title, presence: true
  # validates :year, presence: true
  # validates :plot, presence: true
  # validates :director, presence: true
  # validates :english, presence: true

  # validates :plot, length: { minimum: 10 }
end
