class PatientAnemiasController < ApplicationController
  def new
    @patient = Patient.find(params[:patient_id])
    @anemia = Anemia.new patient: @patient
  end
end
