class AddEnumsToCardForeignData < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
        ALTER TABLE card_foreign_datum
          CHANGE `language` `language` ENUM('German','Spanish','French','Italian','Japanese','Portuguese (Brazil)','Russian','Chinese Simplified','Korean','Chinese Traditional','Phyrexian','Sanskrit','Latin','Hebrew','Arabic','Ancient Greek') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
    SQL
  end

  def down
    change_column :card_foreign_datum, :language, :string # Previous type
  end
end
