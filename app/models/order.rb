class Order < ActiveRecord::Base

belongs_to :beer
belongs_to :customer
end
