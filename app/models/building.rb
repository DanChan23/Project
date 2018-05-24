class Building < ApplicationRecord
	has_many :units

	validates :name, :address, :owner, :presence => true
	validates :name, :uniqueness => true
end
