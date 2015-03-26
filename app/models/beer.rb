class Beer < ActiveRecord::Base

	has_many :orders
	belongs_to :hop
	belongs_to :yeast
	belongs_to :malt
	
	
  def self.to_csv
  
    CSV.generate do |csv|
      csv << ["name", "abv", "malt", "hop", "yeast"]
      all.each do |beer|
		csv << [beer.name, beer.abv, beer.malt.name, beer.hop.name, beer.yeast.name]
      end
    end
  end
  
end
