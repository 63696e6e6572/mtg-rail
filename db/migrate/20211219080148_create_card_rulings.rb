class CreateCardRulings < ActiveRecord::Migration[6.1]
  def change
    create_table :card_rulings, if_not_exists: false do |t|
      t.date :date
      t.text :text
      t.string :uuid, null: false, :limit => 36, :default => ''

      t.timestamps
    end
    add_index :card_rulings, :uuid, name: "uuid", :unique => true, if_not_exists: false
  end
end
