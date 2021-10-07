class GenreSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :movie
end
