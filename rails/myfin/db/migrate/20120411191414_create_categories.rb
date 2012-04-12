class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :descr
      t.integer :direction

      t.timestamps
    end
  end
end
