class Post < ApplicationRecord
  belongs_to :user
  validates :postid, presence: true, uniqueness: true

end
