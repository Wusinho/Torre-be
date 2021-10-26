require_relative '../services/authentication_token'

class InformationController < ApplicationController
  include AuthenticationToken
  before_action :authorized


  def apireq
    req = JobRequest.new
    byebug
    req.request(logged_in_user.username)

    if req
      @dev = dev_create(req.name)

      req.lang.each do |ele|
        dev_lang(ele['language'], ele['code'], ele['fluency'])
      end
      req.str.each do |ele|
        dev_str(ele['name'], ele['proficiency'])
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
  @dev = Developer.create!(name: name)
end

def dev_lang(language, fluency, name)
  @lang = Devlang.create!(
    language: language,
    fluency: fluency,
    name: name,
    developer_id: logged_in_user.id,
  )
end

def dev_str(name, proficiency)
  @str = Devlang.create(
    name: name,
    proficiency: proficiency,
    developer_id: logged_in_user.id,
  )

end
end
