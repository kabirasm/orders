class Order < ActiveRecord::Base


  validates_numericality_of :customer
  validates_numericality_of :company
  validates :phone,  :presence   => true
  validates :itemordered,  :presence   => true,
		      

end
