class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :code
      t.date :birthday

      t.timestamps
    end
  end
end
