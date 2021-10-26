require_relative '../services/authentication_token'

class JobController < ApplicationController
  include AuthenticationToken
  before_action :authorized, only: %i[apireq update destroy]

  def apireq
    req = JobRequest.new
    req.request(id: params[:id])
    
    render json: req.objective

  end

private


end
