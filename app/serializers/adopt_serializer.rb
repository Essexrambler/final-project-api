class AdoptSerializer < ActiveModel::Serializer
  attributes :id, :animal_id, :amount, :animal, :user
  belongs_to :user
  # belongs_to :animal
end
