# == Schema Information
#
# Table name: students
#
#  id         :integer         not null, primary key
#  rollnum    :integer
#  positions  :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  member_id  :integer
#

class Student < ActiveRecord::Base 

	# Associations
	belongs_to :member

	# Validations
	validates :rollnum, presence: { message: 'Roll number is required'}, uniqueness: { message: 'This roll number has been already taken'}

end
