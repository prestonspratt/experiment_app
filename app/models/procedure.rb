class Procedure < ActiveRecord::Base
  attr_accessible :directions, :experiment_id
  belongs_to :experiment
  #has_many :steps, dependent: :destroy

  validates :experiment_id, presence: true,
  						   	          uniqueness: true
end
