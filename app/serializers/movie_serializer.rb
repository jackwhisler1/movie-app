class MovieSerializer < ActiveModel::Serializer
  attributes :id, :plot, :title, :year, :director
  has_many :actors
  has_many :genres
end
