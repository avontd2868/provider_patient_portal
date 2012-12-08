class ProviderSessionController < ApplicationController
    def new
        if @auth && (@auth.patient == false)
            redirect_to provider_dashboard_path
        else
            
        end
    end

    def create
        doctor = Doctor.find_by_username(params[:username])
        if doctor && doctor.authenticate(params[:password])
            session[:doctor_id] = doctor.id
            redirect_to provider_dashboard_path
        else
            render :new #this is the new.html.erb page
        end
    end

    def destroy
        session[:doctor_id] = nil
        redirect_to root_path
    end
end
