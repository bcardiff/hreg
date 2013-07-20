class PatientAnemiasController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
  end

  def show
    @anemia = Anemia.find(params[:id])
    @patient = @anemia.patient
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @anemia = Anemia.new patient: @patient
  end

  def create
    @anemia = Anemia.new(params[:anemia])
    @anemia.patient = Patient.find(params[:patient_id])
    @patient = @anemia.patient

    if @anemia.save
      redirect_to patient_anemia_url(@patient, @anemia), notice: 'Anemia was successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @anemia = Anemia.find(params[:id])
    @patient = @anemia.patient
  end

  def update
    @anemia = Anemia.find(params[:id])
    @patient = @anemia.patient

    if @anemia.update_attributes(params[:anemia])
      redirect_to patient_anemia_url(@patient, @anemia), notice: 'Anemia was successfully updated.'
    else
      render action: "edit"
    end
  end
end
