class Payment < ActiveRecord::Base
  belongs_to :customer
  belongs_to :service
  attr_accessible :amount, :data, :name, :ref, :customer_id, :service_id

  def self.load_from_bank
    list = FioAPI::List.new
    list.set_last_fetch_date(Date.new(2013,05,05))
    list.from_last_fetch
    list.response.transactions.each do |payment|
      p = Payment.new
      p.amount = payment.amount
      p.ref = payment.vs.to_i
      p.data = payment
      p.save
    end
  end

end
