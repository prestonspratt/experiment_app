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

require 'spec_helper'

describe Analysis do
  pending "add some examples to (or delete) #{__FILE__}"
end
