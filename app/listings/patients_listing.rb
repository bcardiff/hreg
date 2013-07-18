class PatientsListing < Listings::Base  

  model Patient

  column :id
  column :first_name, searchable: true
  column :last_name, searchable: true

  column do |patient|  
    link_to 'Edit', edit_patient_path(patient), class: 'btn btn-link'
  end

  column do |patient|
    link_to 'Anemias', patient_anemium_index_url(patient), class: 'btn btn-link'
  end

end