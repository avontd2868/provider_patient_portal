class PatientsController < ApplicationController

  def login
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to dashboard_index_path(user)
    else
        render :new #this is the new.html.erb page
    end
  end

  def edit
    @patient = Patient.find(params[:patient_id])  
  end

  def join
    # @doc = Doctor.find(params[:id])
    r = Request.create(:sender_id => @auth[:id], :receiver_id => params[:id], :accepted => nil)
    # render :partial => 'success'
  end
  
end