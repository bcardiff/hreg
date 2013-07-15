class AddDosajeHemoFetalToAnemia < ActiveRecord::Migration
  def change
    add_column :anemia, :dosaje_hemo_fetal, :text
  end
end
