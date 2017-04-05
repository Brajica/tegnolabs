class Rating < ApplicationRecord
  belongs_to :app
  belongs_to :user
  belongs_to :valoracion
  validates :unique, presence: true, :uniqueness => {message: "No puedes calificar dos veces la misma aplicacion"}
end
