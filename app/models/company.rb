class Company < ActiveRecord::Base  
  validates :name, uniqueness: true
  
  validates :name, :description, :year_founded, :presence => true
  
end