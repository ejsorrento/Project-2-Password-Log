class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :website
      t.string :assoc_email
      t.string :assoc_password
      t.references :user, foreign_key: true




      t.timestamps
    end
  end
end
