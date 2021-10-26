class PostSerializer < ActiveModel::Serializer
  attributes :id, :postid, :name, :currency, :salary
  has_one :user
end
