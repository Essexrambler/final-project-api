class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :species, :location, :image, :gender, :habitat
  has_many :adopts
end
