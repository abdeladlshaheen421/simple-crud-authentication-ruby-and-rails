class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :user_id # this is the foreign key
      t.timestamps
    end
  end
end
