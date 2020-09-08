class Postulante < ApplicationRecord
	validates :cedula, presence: true, uniqueness: true
	validates :nombres, presence: true
	validates :fecha_nacimiento, presence: true
	validates :edad, presence: true
	validates :sexo, presence: true
	validates :nacionalidad, presence: true
	validates :estado_civil, presence: true
	validates :telefono, presence: true
	validates :direccion, presence: true, length: {minimum: 10}
	validates :mas_info, presence: true
	validates :idioma, presence: true

	has_many :estudios
	has_many :exp_laborals
	belongs_to :user, optional: true
end
