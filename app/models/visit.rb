class Visit < ActiveRecord::Base
  attr_accessible :inout, :employee
  belongs_to :office
  belongs_to :employee
end
