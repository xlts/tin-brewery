class Hop < ActiveRecord::Base

has_many :beers
belongs_to :country
end
