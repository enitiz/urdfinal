# == Schema Information
#
# Table name: members
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  name                   :string(255)
#  joined_on              :integer
#  admin                  :boolean
#  department_id          :integer
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#

class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  								:name, :joined_on, :department_id, :student_attributes
  
  #Associations
  belongs_to :department
  
  has_one :student, :dependent => :destroy
  accepts_nested_attributes_for :student
  
  has_one :nstudent, :dependent => :destroy
  accepts_nested_attributes_for :nstudent
  
end
