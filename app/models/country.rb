class Country < ActiveRecord::Base

	has_many :malts
	has_many :hops
end
