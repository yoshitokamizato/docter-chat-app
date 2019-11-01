class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :age
      t.integer :review_id
      t.integer :hospital_id

      t.timestamps
    end
  end
end
