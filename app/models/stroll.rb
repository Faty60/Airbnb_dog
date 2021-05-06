class Stroll < ApplicationRecord
  has_many :dogsitters
  has_many :dogs
  belongs_to :city
end
