class AddHeinzFalciformacionBrewerCarrellKayKleihauerBetkeCoombsDirectaToAnemia < ActiveRecord::Migration
  def change
    add_column :anemia, :heinz, :string
    add_column :anemia, :falciformacion, :string
    add_column :anemia, :brewer, :string
    add_column :anemia, :carrell_kay, :string
    add_column :anemia, :kleihauer_betke, :string
    add_column :anemia, :coombs_directa, :string
  end
end
