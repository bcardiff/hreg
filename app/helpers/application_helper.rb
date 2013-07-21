module ApplicationHelper
  def nested_url(patient, anemia)
    if anemia.new_record?
      patient_anemias_path(patient)
    else
      patient_anemia_path(patient, anemia)
    end
  end

  def li_active_if(current_page_ops)
    haml_tag :li, class: "#{'active' if current_page?(current_page_ops)}" do
      yield
    end
  end

  def readonly_form_for(object, *args, &block)
    options = args.extract_options!
    options.merge! builder: ReadonlyFormBuilder
    options.merge! url: url_for(action: :edit)
    options.merge! method: :get
    simple_form_for(object, *(args << options), &block)
  end
end
