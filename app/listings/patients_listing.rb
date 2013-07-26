class PatientsListing < Listings::Base  

  model Patient

  column :id
  column :first_name, searchable: true
  column :last_name, searchable: true

  column do |patient|  
    link_to 'Ver', patient_path(patient), class: 'btn btn-link'
  end

  column do |patient|
    link_to 'Anemias', patient_anemias_path(patient), class: 'btn btn-link'
  end

end