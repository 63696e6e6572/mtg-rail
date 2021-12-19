class CreateSetTranslations < ActiveRecord::Migration[6.1]
  def change
    create_table :set_translations, if_not_exists: false do |t|
      t.string :language, null: true
      t.string :setCode, null: false, :limit => 8, :default => ''
      t.text :translation, null: true

      t.timestamps
    end
    add_index :set_translations, :setCode, name: "setCode", :unique => false, if_not_exists: false
  end
end
