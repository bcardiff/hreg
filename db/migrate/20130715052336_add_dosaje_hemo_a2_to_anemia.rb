class AddDosajeHemoA2ToAnemia < ActiveRecord::Migration
  def change
    add_column :anemia, :dosaje_hemo_a2, :text
  end
end
