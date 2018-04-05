class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true
      t.text :keywords
      t.text :description

      t.timestamps
    end
  end
end
