class Unit < ApplicationRecord
	has_one :type
	belongs_to :building
	belongs_to :person
end
