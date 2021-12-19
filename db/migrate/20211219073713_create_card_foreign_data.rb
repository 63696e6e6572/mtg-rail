class CreateCardForeignData < ActiveRecord::Migration[6.1]
  def change
    create_table :card_foreign_datum, if_not_exists: false do |t|
      t.text :cardType
      t.text :flavorText
      t.string :language
      t.integer :multiverseid
      t.text :name
      t.text :text
      t.string :uuid, null: false, :limit => 36, :default => ''

      t.timestamps
    end
    add_index :card_foreign_datum, :uuid, name: "uuid", :unique => true, if_not_exists: false
  end
end
