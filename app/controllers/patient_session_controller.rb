class PatientSessionController < ApplicationController
    def new
        if @auth && (@auth.patient == true)
            redirect_to patient_dashboard_path
        else
        end
    end

    def create
        patient = Patient.find_by_username(params[:username])
        if patient && patient.authenticate(params[:password])
            session[:patient_id] = patient.id
            redirect_to patient_dashboard_path
        else
            render :new #this is the new.html.erb page
        end
    end

    def destroy
        session[:doctor_id] = nil
        session[:patient_id] = nil
        redirect_to root_path
    end
end
