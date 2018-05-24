class Person < ApplicationRecord
	has_one :account
	has_many :units
	has_many :reservations, :through => :payments
	has_many :payments
end
