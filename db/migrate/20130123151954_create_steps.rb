class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :content
      t.string :videolink
      t.integer :procedure_id
      t.integer :experiment_id

      t.timestamps
    end
    add_index :steps, [:experiment_id, :procedure_id]
  end
end
