class ReadonlyFormBuilder < SimpleForm::FormBuilder

  class GenericReadonlyInput < SimpleForm::Inputs::Base
    include ERB::Util

    def input
      "<span class='uneditable-input'>#{h(self.value)}</span>"
    end

    def value
      @builder.object.send(attribute_name)
    end
  end

  class DateReadonlyInput < GenericReadonlyInput
    def value
      I18n.l super
    end
  end

  # Override base simple_form mappings
  self.mappings = {}
  # map_type :text,                                :to => GenericReadonlyInput
  # map_type :file,                                :to => GenericReadonlyInput
  map_type :string, :email, :search, :tel, :url, :to => GenericReadonlyInput
  # map_type :password,                            :to => GenericReadonlyInput
  # map_type :integer, :decimal, :float,           :to => GenericReadonlyInput
  # map_type :range,                               :to => GenericReadonlyInput
  # map_type :check_boxes,                         :to => GenericReadonlyInput
  # map_type :radio_buttons,                       :to => GenericReadonlyInput
  # map_type :select,                              :to => GenericReadonlyInput
  # map_type :grouped_select,                      :to => GenericReadonlyInput
  map_type :date, :time, :datetime,              :to => DateReadonlyInput
  # map_type :country, :time_zone,                 :to => GenericReadonlyInput
  # map_type :boolean,                             :to => GenericReadonlyInput

end

