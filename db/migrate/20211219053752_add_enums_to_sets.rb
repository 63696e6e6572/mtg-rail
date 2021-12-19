class AddEnumsToSets < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
        ALTER TABLE sets
          CHANGE `setType` `setType` ENUM('core','masters','expansion','memorabilia','commander','starter','archenemy','box','draft_innovation','from_the_vault','funny','duel_deck','masterpiece','promo','premium_deck','planechase','token','vanguard','treasure_chest','spellbook') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL;
    SQL
  end

  def down
    change_column :sets, :setType, :string # Previous type
  end
end
