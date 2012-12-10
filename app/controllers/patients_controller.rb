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
    r = Request.create(:sender_id => @auth[:id], :receiver_id => params[:id], :accepted => nil)
    # render :partial => 'success'
  end

  def show_doctors
    @matches = Matches.find_all_by_patient_id(@auth[:id])
  end

  def delete_doctor
    match = Matches.find(params[:id])
    match.delete
    @matches = Matches.find_all_by_patient_id(@auth[:id])
  end
  
end