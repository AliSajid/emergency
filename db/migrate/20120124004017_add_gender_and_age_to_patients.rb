class AddGenderAndAgeToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :gender_boolean, :boolean
    add_column :patients, :age, :int
  end
end
