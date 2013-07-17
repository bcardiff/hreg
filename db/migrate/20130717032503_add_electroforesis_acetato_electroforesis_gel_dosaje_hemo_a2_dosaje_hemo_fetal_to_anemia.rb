class AddElectroforesisAcetatoElectroforesisGelDosajeHemoA2DosajeHemoFetalToAnemia < ActiveRecord::Migration
  def change
    add_column :anemia, :electroforesis_acetato, :string
    add_column :anemia, :electroforesis_gel, :string
    add_column :anemia, :dosaje_hemo_a2, :string
    add_column :anemia, :dosaje_hemo_fetal, :string
  end
end
