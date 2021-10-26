class UserRequest
  attr_accessor :response_strength, :response_language
  def initialize
    @response_strength = ''
    @response_language = ''
    @name = ''
  end

  def request(name)
    user_response =  RestClient.get("https://bio.torre.co/api/bios/#{name}")
    user_info = JSON.parse(user_response)
    if user_info
      @name = user_info['name']
      @response_strength = user_info['strengths']
      @response_language = user_info['languages']
    else
      render json: {
        error: 'error'
      }
    end
  end

  def name
    @name
  end

  def str
    @response_strength
  end

  def lang
    @response_language
  end

end
