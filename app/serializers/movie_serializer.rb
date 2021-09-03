class MovieSerializer < ActiveModel::Serializer
  attributes :id, :plot
  has_many :actors
end
