class CreateSeekers < ActiveRecord::Migration
  def change
    create_table :seekers do |t|
      t.string :seeker_name
      t.integer :seeker_rent
      t.boolean :seeker_park
      t.boolean :seeker_activities
      t.string :seeker_architecture
      t.integer :seeker_commute
      t.string :seeker_username
      t.string :seeker_password

      t.timestamps null: false
    end
  end
end
