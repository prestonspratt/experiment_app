# == Schema Information
#
# Table name: procedures
#
#  id            :integer          not null, primary key
#  directions    :string(255)
#  experiment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Procedure < ActiveRecord::Base
  attr_accessible :directions, :experiment_id
  belongs_to :experiment
  has_many :steps, dependent: :destroy

  validates :experiment_id, presence: true,
  						   	          uniqueness: true

end
