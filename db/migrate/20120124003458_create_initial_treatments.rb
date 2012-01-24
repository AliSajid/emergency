class CreateInitialTreatments < ActiveRecord::Migration
  def change
    create_table :initial_treatments do |t|
      t.integer :patient_id
      t.string :treatment

      t.timestamps
    end
  end
end
