class CreateRulings < ActiveRecord::Migration[6.1]
  def change
    create_table :rulings, if_not_exists: false do |t|
      t.date :date
      t.text :text
      t.string :uuid, null: false, :limit => 36, :default => ''

      t.timestamps
    end
    add_index :rulings, :uuid, name: "uuid", :unique => true, if_not_exists: false
  end
end
