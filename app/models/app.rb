class App < ApplicationRecord
  validates :titulo, presence: true, uniqueness: true
  validates :cuerpo, presence: {true,message: "Por favor no dejaar vacio el campo titulos"},length: {minimum: 20,message: " el campo cuerpo debe tener mas de 300 caracteres"}

  has_attached_file :imagen, styles: {medium: "1000x720", thumb:"800x600",mini: "600x400",normal:"1350x700"}
   validates_attachment_content_type:imagen, content_type: /\Aimage\/.*\Z/
end
