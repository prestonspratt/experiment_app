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

require 'spec_helper'

describe Procedure do
  pending "add some examples to (or delete) #{__FILE__}"
end
