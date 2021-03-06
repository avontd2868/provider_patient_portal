  class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user
  private
  def authenticate_user
    if session[:patient_id]
      @auth = Patient.find(session[:patient_id])
    elsif session[:doctor_id]
      @auth = Doctor.find(session[:doctor_id])
    else
      @auth = nil
    end
    rescue ActiveRecord::RecordNotFound
  end

end
