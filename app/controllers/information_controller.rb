require_relative '../services/authentication_token'

class InformationController < ApplicationController
  include AuthenticationToken
  before_action :authorized, only: %i[apireq update destroy]

  def apireq
    req = UserRequest.new
    req.request(logged_in_user.username)

    if req
      @dev = dev_create(req.name)
      req.lang.each do |ele|
        dev_lang(ele['language'], ele['fluency'], @dev.id)
      end

      req.str.each do |ele|
        dev_str(ele['name'], ele['proficiency'], @dev.id)
      end

      @strengths = Devstr.all
      @languages = Devlang.all
        render json: {
        language: @languages,
        strength: @strengths,
        }
      
    else
      render json: 'Error'
    end
  end

private

  def dev_create(name)
    @dev = Developer.create(
      name: name,
      user_id: logged_in_user.id,
    )
  end

  def dev_lang(language, fluency, developer_id)
    @lang = Devlang.create(
      language: language,
      fluency: fluency,
      developer_id: developer_id,
    )
  end

  def dev_str(name, proficiency, developer_id)
    @str = Devstr.create(
      name: name,
      proficiency: proficiency,
      developer_id: developer_id,
    )
  end
  
end
