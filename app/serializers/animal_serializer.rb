class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :species, :location, :image, :gender
  has_many :adopts
end
