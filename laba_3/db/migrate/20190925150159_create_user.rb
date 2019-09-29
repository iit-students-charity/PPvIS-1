class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :card_number
      t.string :pin
      t.float :balance
      t.int :attempts
      t.timestamps
    end
  end
end
