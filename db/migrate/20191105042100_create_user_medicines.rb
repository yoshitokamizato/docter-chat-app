class CreateUserMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :user_medicines do |t|
      t.references :medicine, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
