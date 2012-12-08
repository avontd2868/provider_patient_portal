class DashboardController < ApplicationController

  def index_patient

  end

  def index_provider

  end

  def doctor_data
    @docs = Doctor.all
  end
  
end