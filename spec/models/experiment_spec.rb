# == Schema Information
#
# Table name: experiments
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  purpose     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tagline     :string(255)
#

require 'spec_helper'

describe Experiment do
  pending "add some examples to (or delete) #{__FILE__}"
end
