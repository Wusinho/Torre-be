class Joblang < ApplicationRecord
  belongs_to :post
  validates :language, presence: true, uniqueness: true

end
