class Customer < ActiveRecord::Base
  attr_accessible :city, :company_name, :email, :name, :note, :phone, :postal_code, :street, :service_ids
  has_many :services
  has_many :payments

  has_paper_trail

end
