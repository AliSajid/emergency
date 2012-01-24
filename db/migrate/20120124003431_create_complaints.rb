class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.integer :patient_id
      t.string :complaint

      t.timestamps
    end
  end
end
