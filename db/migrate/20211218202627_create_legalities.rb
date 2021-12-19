class CreateLegalities < ActiveRecord::Migration[6.1]
  def change
    create_table :legalities, if_not_exists: false do |t|
      t.string :format
      t.string :status
      t.string :uuid, null: false, :limit => 36, :default => ''

      t.timestamps
    end
    add_index :legalities, :uuid, name: "uuid", :unique => true, if_not_exists: false
  end
end
