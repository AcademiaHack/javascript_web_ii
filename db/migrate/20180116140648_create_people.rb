class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.date :birthdate
      t.integer :gender
      t.string :dni
      t.boolean :customer

      t.timestamps
    end
  end
end
