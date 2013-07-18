module ApplicationHelper
  def nested_url(patient, anemia)
    if anemia.new_record?
      patient_anemias_path(patient, anemia)
    else
      edit_patient_anemia_path(patient, anemia)
    end
  end
end
