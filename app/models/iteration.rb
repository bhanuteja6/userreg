class Iteration < ActiveRecord::Base
  belongs_to :project
  has_many :usdemos, :dependent => :destroy
  attr_accessible :description, :end_date, :name, :start_date
end
