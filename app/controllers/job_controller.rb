require_relative '../services/authentication_token'

class JobController < ApplicationController
  include AuthenticationToken
  before_action :authorized, only: %i[apireq update destroy]

  def apireq
    req = JobRequest.new
    job = job_params['job']
    req.request(job)
    
    render json: req.objective

  end

private

  def job_params
    params.permit(:job)
  end
end

#PW90Gvpr