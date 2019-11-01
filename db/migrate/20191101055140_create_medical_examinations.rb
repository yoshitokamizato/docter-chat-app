class CreateMedicalExaminations < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_examinations do |t|
      t.float :weight
      t.float :temp
      t.integer :SYS
      t.integer :DIA
      t.text :memo
      t.integer :user_id

      t.timestamps
    end
  end
end
