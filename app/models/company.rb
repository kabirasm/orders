class Company < ActiveRecord::Base
  has_many :customers

  site_regex =  /^(https?:\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix

  validates :name,      :presence => true
  validates :address,	:presence => true
  validates :site,      :presence   => true,
                        :format     => { :with => site_regex },
                        :uniqueness => true

end
