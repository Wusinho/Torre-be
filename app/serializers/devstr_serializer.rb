class DevstrSerializer < ActiveModel::Serializer
  attributes :id, :name, :proficiency
  has_one :developer
end
