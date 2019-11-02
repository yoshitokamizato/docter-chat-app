class CreateMdeicals < ActiveRecord::Migration[5.2]
  def change
    create_table :mdeicals do |t|
      t.string :medicen
      t.string :description
      t.references :user_medicine  #中間テーブル 紐付け
      t.timestamps
    end
  end
end
