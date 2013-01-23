# == Schema Information
#
# Table name: steps
#
#  id            :integer          not null, primary key
#  content       :string(255)
#  videolink     :string(255)
#  procedure_id  :integer
#  experiment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Step < ActiveRecord::Base
  attr_accessible :content, :procedure_id, :videolink, :experiment_id
  belongs_to :procedure

  validates :experiment_id, presence: true
  validates :content, presence: true

  before_save :set_procedure_id

  private

    def set_procedure_id
      exp = Experiment.find(experiment_id)
      self.procedure_id = exp.procedure.id
    end
end
