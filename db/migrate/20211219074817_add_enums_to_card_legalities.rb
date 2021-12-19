class AddEnumsToCardLegalities < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
        ALTER TABLE card_legalities
          CHANGE `format` `format` ENUM('commander','duel','legacy','modern','paupercommander','penny','premodern','vintage','gladiator','historic','historicbrawl','pauper','pioneer','brawl','future','standard','oldschool') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
          CHANGE `status` `status` ENUM('Legal','Restricted','Banned') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL;
    SQL
  end

  def down
    change_column :card_legalities, :format, :string # Previous type
    change_column :card_legalities, :status, :string # Previous type
  end
end
