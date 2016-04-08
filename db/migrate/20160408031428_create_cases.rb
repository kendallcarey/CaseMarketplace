class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :type
      t.text :description
      t.integer :value
      t.integer :loan_amount
      t.timestamps
    end
  end
end
