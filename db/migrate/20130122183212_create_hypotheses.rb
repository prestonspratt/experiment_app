class CreateHypotheses < ActiveRecord::Migration
  def change
    create_table :hypotheses do |t|
      t.string :content
      t.integer :experiment_id

      t.timestamps
    end
    add_index :hypotheses, :experiment_id
  end
end
