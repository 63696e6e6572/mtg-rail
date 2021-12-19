class CreateForeignData < ActiveRecord::Migration[6.1]
  def change
    create_table :foreign_data, if_not_exists: false do |t|
      t.text :cardType
      t.text :flavorText
      t.string :language
      t.integer :multiverseid
      t.text :name
      t.text :text
      t.string :uuid, null: false, :limit => 36, :default => ''

      t.timestamps
    end
    add_index :foreign_data, :uuid, name: "uuid", :unique => true, if_not_exists: false
  end
end
