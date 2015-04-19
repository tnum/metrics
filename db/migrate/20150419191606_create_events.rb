class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :site_id

      t.timestamps
    end
    add_index :events, :site_id
  end
end
