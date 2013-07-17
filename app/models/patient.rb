class Patient < ActiveRecord::Base
  attr_accessible :birthday, :code, :first_name, :last_name

  def display_name
    "#{last_name}, #{first_name}"
  end
end
