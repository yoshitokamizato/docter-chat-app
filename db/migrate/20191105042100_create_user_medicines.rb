class CreateUserMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :user_medicines do |t|
      t.integer :user_id
      t.integer :medicen_id
      t.references :medicine
      t.timestamps
    end
  end
end
