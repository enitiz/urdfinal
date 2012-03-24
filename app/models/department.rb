# == Schema Information
#
# Table name: departments
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Department < ActiveRecord::Base

# Associations
has_one :member

end
