class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :category_id
      t.integer :publisher_id

      t.timestamps
    end
  end
end
