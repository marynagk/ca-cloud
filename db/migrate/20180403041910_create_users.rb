class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :group
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :slack_account
      t.string :passhash
      t.integer :status
      t.string :avatar

      t.timestamps
    end
  end
end
