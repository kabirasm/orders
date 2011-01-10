
class Customer < ActiveRecord::Base
 belongs_to :company 

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


  validates :name,   :presence   => true,
                     :length     => { :maximum => 40 }
  validates :phone,  :presence   => true
  validates :email,  :presence   => true,
		     :format => { :with => email_regex }, 
		     :uniqueness => true
   
end
