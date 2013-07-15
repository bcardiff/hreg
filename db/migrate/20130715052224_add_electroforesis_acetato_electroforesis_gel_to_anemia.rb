class AddElectroforesisAcetatoElectroforesisGelToAnemia < ActiveRecord::Migration
  def change
    add_column :anemia, :electroforesis_acetato, :text
    add_column :anemia, :electroforesis_gel, :text
  end
end
