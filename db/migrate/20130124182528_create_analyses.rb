class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.string :content
      t.integer :experiment_id

      t.timestamps
    end
    add_index :analyses, :experiment_id
  end
end
