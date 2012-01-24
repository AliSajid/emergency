class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|
      t.integer :patient_id
      t.string :investigation

      t.timestamps
    end
  end
end
