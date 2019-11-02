class CreateUsersMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :users_medicines do |t|
      t.integer :user_id
      t.integer :medicen_id
      t.references :medicine  #中間テーブル 紐付け
      t.timestamps
    end
  end
end
