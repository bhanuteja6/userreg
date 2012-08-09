class Task < ActiveRecord::Base
  belongs_to :usdemo
  attr_accessible :acceptor, :description, :disposition, :estimater_hours, :name, :task_type, :proid
end
