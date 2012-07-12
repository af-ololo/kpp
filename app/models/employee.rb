class Employee < ActiveRecord::Base
  belongs_to :office
  has_many :visits, :dependent => :destroy
  attr_accessible :name, :post

  validates :name,	:presence => true,
			:length => { :minimum => 10 }
end
