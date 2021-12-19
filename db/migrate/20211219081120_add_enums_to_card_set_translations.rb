class AddEnumsToCardSetTranslations < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
        ALTER TABLE card_set_translations
          CHANGE `language` `language` ENUM('Chinese Simplified','Chinese Traditional','French','German','Italian','Japanese','Korean','Portuguese (Brazil)','Russian','Spanish') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL;
    SQL
  end

  def down
    change_column :card_set_translations, :language, :string # Previous type
  end
end
