class CreateResearchsections < ActiveRecord::Migration
  def change
    create_table :researchsections do |t|
      t.string :content
      t.string :videolink
      t.integer :experiment_id

      t.timestamps
    end
    add_index :researchsections, :experiment_id
  end
end
