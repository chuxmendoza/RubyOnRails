class Marca < ApplicationRecord
	has_many :productos
	validates :nombre, :presence => {:message =>"es necesario para poder guardar"}
	#validates :nombre, presence: true, allow_blank: false
end
