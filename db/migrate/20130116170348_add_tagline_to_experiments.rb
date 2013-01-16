class AddTaglineToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :tagline, :string
  end
end
