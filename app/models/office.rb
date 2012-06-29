class Office < ActiveRecord::Base
  attr_accessible :address, :name

  validates :name,	:presence => true
  validates :address,	:presence => true,
			:length => { :minimum => 5 }

  has_many :employees
end
