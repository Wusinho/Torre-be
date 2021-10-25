class DevlangSerializer < ActiveModel::Serializer
  attributes :id, :language, :fluency
  has_one :developer
end
