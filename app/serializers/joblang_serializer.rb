class JoblangSerializer < ActiveModel::Serializer
  attributes :id, :language, :fluency
  has_one :post
end
