class ChangeDatatypePhone < ActiveRecord::Migration[5.2]
  def change
    change_column :hospitals, :phone, :string
  end
end
