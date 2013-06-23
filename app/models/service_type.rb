class ServiceType < ActiveRecord::Base
  has_many :services
  attr_accessible :name, :ord, :price, :repeating

end
