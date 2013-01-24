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

class Experiment < ActiveRecord::Base
  attr_accessible :description, :purpose, :title, :tagline
  has_one :researchsection, dependent: :destroy
  has_one :hypothesis, dependent: :destroy
  has_one :procedure, dependent: :destroy
  has_one :analysis, dependent: :destroy
  
  validates :description, presence: true
  validates :purpose, presence: true
  validates :title, presence: true
end
