# == Schema Information
#
# Table name: hypotheses
#
#  id            :integer          not null, primary key
#  content       :string(255)
#  experiment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Hypothesis do
  pending "add some examples to (or delete) #{__FILE__}"
end
