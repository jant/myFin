class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :realization_date
      t.decimal :amount
      t.string :description
      t.references :account
      t.references :category

      t.timestamps
    end
  end
end
