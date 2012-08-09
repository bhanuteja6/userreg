class Usdemo < ActiveRecord::Base
 #belongs_to :project
  belongs_to :iteration
  has_many :tasks, :dependent => :destroy
  attr_accessible :customer, :description, :disposition, :estimated_hours, :name, :status, :tracker, :projectid
end
