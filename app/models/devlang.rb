class Devlang < ApplicationRecord
  belongs_to :developer
  validates :language, presence: true, uniqueness: true
end
