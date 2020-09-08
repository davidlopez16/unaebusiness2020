class ExpLaboral < ApplicationRecord
	belongs_to :user
	belongs_to :postulante
	belongs_to :empresa, optional: true
end
