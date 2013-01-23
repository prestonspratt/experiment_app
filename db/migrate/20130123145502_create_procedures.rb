class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :directions
      t.integer :experiment_id

      t.timestamps
    end
    add_index :procedures, :experiment_id
  end
end
