class UserRequest
  attr_accessor :response_strength, :response_language
  def initialize
    @response_strength = ''
    @response_language = ''
  end

  def request(name)
    user_response =  RestClient.get("https://bio.torre.co/api/bios/#{name}")
    user_info = JSON.parse(user_response)
    if user_info
      @response_strength = user_info['strengths']
      @response_language = user_info['languages']
    else
      render json: {
        error: 'error'
      }
    end
  end

  def response_strength
    @response_strength
  end

  def user_language
    @response_language
  end

end
