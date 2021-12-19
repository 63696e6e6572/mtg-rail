class AddMeta < ActiveRecord::Migration[6.1]
  def change
    create_table :meta, if_not_exists: false do |t|
      t.date :date
      t.text :version

      t.timestamps
    end
  end
end
