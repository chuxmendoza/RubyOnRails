class Producto < ApplicationRecord
	belongs_to :marca	
	validates :nombre, :presence => {:message =>"es necesario para poder guardar"}
	validates :marca, :presence => {:message =>"es necesaria para poder guardar"}
#
#validates_inclusion_of :precio, :in => 1..100
validates :precio, :inclusion => { :in => 1..100, :message => "debe ser entre 1 y 100 para poder guardar" }
#validates_format_of :precio, :with => /\A\d+(?:\.\d{0,2})?\z/
end
