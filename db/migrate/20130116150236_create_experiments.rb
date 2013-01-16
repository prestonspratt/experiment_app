class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.string :description
      t.string :purpose

      t.timestamps
    end
    add_index :experiments, :title
  end
end
