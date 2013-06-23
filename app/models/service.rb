class Service < ActiveRecord::Base
  belongs_to :customer
  belongs_to :service_type
  has_many :payments
  attr_accessible :name, :note, :paid_to, :price, :customer_id, :service_type_id

  validates :customer_id, presence: true

  has_paper_trail

end
