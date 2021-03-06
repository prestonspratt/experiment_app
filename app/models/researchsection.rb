# == Schema Information
#
# Table name: researchsections
#
#  id            :integer          not null, primary key
#  content       :string(255)
#  videolink     :string(255)
#  experiment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Researchsection < ActiveRecord::Base
  attr_accessible :content, :experiment_id, :videolink
  belongs_to :experiment

  validates :experiment_id, presence: true,
  						              uniqueness: true
end
