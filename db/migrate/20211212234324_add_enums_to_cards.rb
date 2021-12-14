class AddEnumsToCards < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
        ALTER TABLE cards
          CHANGE `borderColor` `borderColor` ENUM('black','white','borderless','silver','gold') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'black',
          CHANGE `edhrecRank` `edhrecRank` INT NULL DEFAULT '0',
          CHANGE `frameVersion` `frameVersion` ENUM('2003','1993','2015','1997','future') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'future',
          CHANGE `layout` `layout` ENUM('normal','adventure','class','aftermath','split','flip','leveler','saga','transform','vanguard','meld','modal_dfc','scheme','planar','reversible_card','host','augment') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'normal',
          CHANGE `rarity` `rarity` ENUM('common','uncommon','token','rare','mythic','mythic_rare','basic_land','sealed','special','bonus') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'common';
    SQL
  end

  def down
    change_column :cards, :borderColor, :string # Previous type
    change_column :cards, :edhrecRank, :integer # Previous type
    change_column :cards, :frameVersion, :string # Previous type
    change_column :cards, :layout, :string # Previous type
    change_column :cards, :rarity, :string # Previous type
  end
end
