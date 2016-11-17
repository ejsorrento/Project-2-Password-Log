class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :chief_username
      t.string :chief_email
      t.string :chief_password
      

      t.timestamps
    end
  end
end
