class PatientAnemiasListing < Listings::Base  

  model Anemia

  def filter_items(params, items)
    items = super
    items.where(patient_id: params[:patient_id])
  end

  column :id
  column :created_at
  column do |anemia|
    link_to 'Ver', patient_anemia_url(anemia.patient, anemia), class: 'btn btn-link'
  end

end