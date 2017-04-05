class Valoracion < ApplicationRecord
  has_many :ratings
  validates :nombre, presence: true, :uniqueness => {message: "Ya existe una valoracion con ese nombre"}
end
