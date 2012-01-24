class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.date :date_arrived
      t.time :time_arrived
      t.boolean :mlc_status
      t.string :first_name
      t.string :last_name
      t.string :relation
      t.text :address

      t.timestamps
    end
  end
end
