class App < ApplicationRecord
  validates :titulo, presence: true, uniqueness: true
  validates :cuerpo, :presence => {message: "Por favor no dejaar vacio el campo titulos"},length: {minimum: 20,message: " el campo cuerpo debe tener mas de 300 caracteres"}
  validates :idioma, :presence => {message: "Selecione la idioma"}
  validates :rol, :presence => {message: "Selecione el rol que cumple"}
  validates :plataforma, :presence => {message: "Selecione la plataforma donde corre"}

  has_attached_file :imagen, styles: {medium: "1000x720", thumb:"800x600",mini: "600x400",normal:"1350x700"}
   validates_attachment_content_type:imagen, content_type: /\Aimage\/.*\Z/

   scope :estudiantes, ->{ where(rol: "estudiante") }
   scope :profesores, ->{ where(rol: "profesor") }
   scope :ultimos, ->{ order("created_at DESC") }
end
