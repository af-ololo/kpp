class Visit < ActiveRecord::Base
  has_one :office
  has_one :employee
  attr_accessible :inout
end
