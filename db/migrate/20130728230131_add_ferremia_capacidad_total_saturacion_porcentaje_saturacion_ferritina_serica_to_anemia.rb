class AddFerremiaCapacidadTotalSaturacionPorcentajeSaturacionFerritinaSericaToAnemia < ActiveRecord::Migration
  def change
    add_column :anemia, :ferremia, :string
    add_column :anemia, :capacidad_total_saturacion, :string
    add_column :anemia, :porcentaje_saturacion, :string
    add_column :anemia, :ferritina_serica, :string
  end
end
