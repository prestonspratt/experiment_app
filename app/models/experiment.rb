class Experiment < ActiveRecord::Base
  attr_accessible :description, :purpose, :title, :tagline
  validates :description, presence: true
  validates :purpose, presence: true
  validates :title, presence: true
end
