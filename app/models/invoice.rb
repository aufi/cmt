class Invoice < ActiveRecord::Base
  belongs_to :customer
  belongs_to :service
  attr_accessible :items, :num
end
