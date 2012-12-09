class ProviderController < ApplicationController
  def patient_requests
    @requests = Request.where(:receiver_id => @auth)
  end

  def join_patient_request
    request = Request.find(params[:id])
    m = Matches.create(:patient_id => request.sender_id, :doctor_id => request.receiver_id)
    # Send a message to the patient that they have been accepted
    request.delete
    @patient = m.patient_id
  end

  def destroy_patient_request
    request = Request.find(params[:id])
    request.delete
    @requests = Request.where(:receiver_id => @auth)
  end
end