class AddStatusToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :status, :string
  end
end
