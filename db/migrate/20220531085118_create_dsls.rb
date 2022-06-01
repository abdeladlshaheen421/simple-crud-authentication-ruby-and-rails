class CreateDsls < ActiveRecord::Migration[7.0]
  def change
    create_table :dsls do |t|
      t.string :field

      t.timestamps
    end
  end
end
