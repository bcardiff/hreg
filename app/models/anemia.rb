# encoding: utf-8
class Anemia < ActiveRecord::Base
  # attr_accessible :title, :body

  acts_as_survey do
    # q :electroforesis, 'Electroforesis de Hemoglobina'
    q :electroforesis_acetato, 'En acetato de celulosa a pH alcalino'
    q :electroforesis_gel, 'En gel de agarosa a pH ácido'

    q :dosaje_hemo_a2, 'Dosaje de Hemoglobina A2 (por columna)'
    q :dosaje_hemo_fetal, 'Dosaje de Hemoglobina Fetal'
  end

end
