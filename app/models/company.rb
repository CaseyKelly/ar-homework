class Company < ActiveRecord::Base
  has_many :locations
  has_many :products

end
