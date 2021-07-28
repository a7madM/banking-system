class CreateUserTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_transactions do |t|
      t.references :to_user, index: true, foreign_key: { to_table: :users }
      t.references :from_user, index: true, foreign_key: { to_table: :users }
      t.integer :amount
      t.timestamps
    end
  end
end
