class AddEnumsToTokens < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
        ALTER TABLE tokens
          CHANGE `borderColor` `borderColor` ENUM('black','borderless','silver','gold') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
          CHANGE `layout` `layout` ENUM('token','art_series','emblem','normal') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL;
    SQL
  end

  def down
    change_column :tokens, :borderColor, :string # Previous type
    change_column :tokens, :layout, :string # Previous type
  end
end
