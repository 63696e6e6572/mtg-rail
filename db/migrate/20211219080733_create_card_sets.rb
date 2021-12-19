class CreateCardSets < ActiveRecord::Migration[6.1]
  def change
    create_table :card_sets, if_not_exists: false do |t|
      t.integer :baseSetSize
      t.text :block
      t.longtext :booster
      t.string :code, null: false, :limit => 8, :default => ''
      t.boolean :isFoilOnly, null: false, :default => 0
      t.boolean :isForeignOnly, null: false, :default => 0
      t.boolean :isNonFoilOnly, null: false, :default => 0
      t.boolean :isOnlineOnly, null: false, :default => 0
      t.boolean :isPartialPreview, null: false, :default => 0
      t.text :keyruneCode
      t.integer :mcmId
      t.integer :mcmIdExtras
      t.text :mcmName
      t.text :mtgoCode
      t.text :name
      t.text :parentCode
      t.date :releaseDate
      t.text :sealedProduct
      t.string :setType
      t.integer :tcgplayerGroupId
      t.integer :totalSetSize

      t.timestamps
    end
    add_index :card_sets, :code, name: "code", :unique => true, if_not_exists: false
  end
end
