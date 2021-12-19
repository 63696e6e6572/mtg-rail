class ChangeCardForeignDatumName < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      RENAME TABLE `mtg_rail_development`.`card_foreign_datum` TO `mtg_rail_development`.`card_foreign_data`;
    SQL
  end

  def down
    execute <<-SQL
      RENAME TABLE `mtg_rail_development`.`card_foreign_data` TO `mtg_rail_development`.`card_foreign_datum`;
    SQL
  end
end
