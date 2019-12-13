class AddHeightToMedicalExamination < ActiveRecord::Migration[5.2]
  def change
    add_column :medical_examinations, :height, :float
  end
end
