class Devstr < ApplicationRecord
  belongs_to :developer
  validates :name, presence: true, uniqueness: true

end
