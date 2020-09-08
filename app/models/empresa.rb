class Empresa < ApplicationRecord
	validates :ruc, presence: true, uniqueness: true
	validates :nombre, presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true
	validates :email, presence: true

	has_many :exp_laborals
end
