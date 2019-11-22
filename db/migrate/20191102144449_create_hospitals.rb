class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.timestamps
    end
  end
end
