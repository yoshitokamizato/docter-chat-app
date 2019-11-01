class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.integer :doctors_id #医者ID
      t.timestamps
    end
  end
end
