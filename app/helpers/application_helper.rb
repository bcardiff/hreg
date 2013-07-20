module ApplicationHelper
  def nested_url(patient, anemia)
    if anemia.new_record?
      patient_anemias_path(patient, anemia)
    else
      edit_patient_anemia_path(patient, anemia)
    end
  end

  def li_active_if(current_page_ops)
    haml_tag :li, class: "#{'active' if current_page?(current_page_ops)}" do
      yield
    end
  end

  def readonly_form_for(object, *args, &block)
    options = args.extract_options!
    simple_form_for(object, *(args << options.merge(builder: ReadonlyFormBuilder)), &block)
  end
end
