class Researchsection < ActiveRecord::Base
  attr_accessible :content, :experiment_id, :videolink
  belongs_to :experiment

  validates :experiment_id, presence: true,
  						              uniqueness: true
end
