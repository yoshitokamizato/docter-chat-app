class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :name, null: false, unique: true
      t.string :discription, null: false, unique: true
      t.integer :user_id
      t.timestamps
    end
  end
end
