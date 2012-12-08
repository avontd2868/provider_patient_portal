class SessionPatientController < ApplicationController
    def new
        if @auth
            redirect_to dashboard_patient_path
        else
        end
    end

    def create
        patient = Patient.find_by_username(params[:username])
        if patient && patient.authenticate(params[:password])
            session[:patient_id] = patient.id
            redirect_to dashboard_patient_path
        else
            render :new #this is the new.html.erb page
        end
    end

    def destroy
        session[:patient_id] = nil
        redirect_to login_path
    end
end
