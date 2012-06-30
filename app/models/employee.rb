class Employee < ActiveRecord::Base
  belongs_to :office
  has_many :visits
  attr_accessible :name, :post

  validates :name,	:presence => true,
			:length => { :minimum => 10 }
  validates :post,	:presence => true,
			:length => { :minimum => 5 }
end
