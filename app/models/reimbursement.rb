class Reimbursement < ActiveRecord::Base
   belongs_to :payee, class_name: 'Employee'
  attr_accessible :comments, :data, :reference

  validates :payee_id, presence: true
end
