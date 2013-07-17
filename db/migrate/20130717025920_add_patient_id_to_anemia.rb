class AddPatientIdToAnemia < ActiveRecord::Migration
  def change
    add_column :anemia, :patient_id, :int
  end
end
