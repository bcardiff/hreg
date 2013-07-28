# encoding: utf-8
class Anemia < ActiveRecord::Base
  belongs_to :patient
  attr_accessible :patient

  acts_as_survey do
    text 'Electroforesis de Hemoglobina:'

    q :electroforesis_acetato, 'En acetato de celulosa a pH alcalino:'
    q :electroforesis_gel, 'En gel de agarosa a pH ácido:'

    q :dosaje_hemo_a2, 'Dosaje de Hemoglobina A2 (por columna):', :unit => '%'
    q :dosaje_hemo_fetal, 'Dosaje de Hemoglobina Fetal:', :unit => '%'

    q :heinz, 'Cuerpos de Heinz:'
    q :falciformacion, 'Prueba de Falciformación (Sickling):'
    q :brewer, 'Test de Brewer:'
    q :carrell_kay, 'Prueba de Carrell y Kay:'
    q :kleihauer_betke, 'Prueba de Kleihauer-Betke:'
    q :coombs_directa, 'Prueba de Coombs directa:'

    section 'Estudio del Hierro:' do
      q :ferremia, 'Ferremia:', :unit => 'µg/dL'
      q :capacidad_total_saturacion, 'Capacidad total de Saturación:', :unit => 'µg/dL'
      q :porcentaje_saturacion, 'Porcentaje de Saturación:', :unit => '%'
      q :ferritina_serica, 'Ferritina sérica:', :unit => 'ng/mL'
    end

  end

end
