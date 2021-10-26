require_relative '../services/authentication_token'

class JobController < ApplicationController
  include AuthenticationToken
  before_action :authorized, only: %i[apireq update destroy]

  def apireq
    req = JobRequest.new
    job = job_params['job']
    req.request(job)

    if req
      @post = Post.create(req.postid, req.responsabilities, req.name, req.currency, req.salary)

      req.lang.each do |ele|
        job_lang(ele['language'], ele['fluency'], @post.id)
      end

      req.str.each do |ele|
        job_str(ele['name'], ele['proficiency'], @post.id)
      end

    end
    
    render json: req.objective

  end

private
  def post_create(postid, responsabilities, name, currency, salary)
    @post = Post.create(
      postid: postid,
      responsabilities: responsabilities,
      name: name,
      currency: currency,
      salary: salary,
      user_id: logged_in_user.id
    )
  end

  def job_lang(language, fluency, post_id)
    @lang = Joblang.create(
      language: language,
      fluency: fluency,
      post_id: post_id,
    )
  end

  def job_str(name, proficiency, post_id)
    @str = Jobstr.create(
      name: name,
      proficiency: proficiency,
      post_id: post_id,
    )
  end


  def job_params
    params.permit(:job)
  end
end

#PW90Gvpr