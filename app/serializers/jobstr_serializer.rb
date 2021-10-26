class JobstrSerializer < ActiveModel::Serializer
  attributes :id, :name, :proficiency
  has_one :post
end
