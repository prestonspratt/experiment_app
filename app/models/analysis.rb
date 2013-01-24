# == Schema Information
#
# Table name: analyses
#
#  id            :integer          not null, primary key
#  content       :string(255)
#  experiment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Analysis < ActiveRecord::Base
  attr_accessible :content, :experiment_id
  belongs_to :experiment

  validates :experiment_id, presence: true,
  						   	          uniqueness: true
end
