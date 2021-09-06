class Actor < ApplicationRecord
  belongs_to :movie

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :known_for, presence: true
  validates :age, presence: true

  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :age, length: { minimum: 13 }

end
