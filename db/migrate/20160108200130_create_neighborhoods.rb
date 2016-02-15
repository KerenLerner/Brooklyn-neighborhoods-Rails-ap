class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.integer :rent
      t.boolean :park
      t.boolean :activities
      t.string :architecture
      t.integer :commute

      t.timestamps null: false
    end
  end
end
