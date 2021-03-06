class JobRequest
  def initialize
    @objective = ''
    @responsabilities = ''
    @name = ''
    @currency = ''
    @baseSalary = ''
    @postid = ''
    @strengths = ''
    @languages = ''
  end

  def request(id)
    response =  RestClient.get("https://torre.co/api/suite/opportunities/#{id}")
    user_info = JSON.parse(response)
    user_info.each do |key,val|
      if key == 'objective'

        @objective = val
      elsif key == 'id'

        @postid = val
      elsif key == 'details'
        @responsabilities = val[0]['content']
      elsif key == 'languages'
        @languages = val
      elsif key == 'strengths'
        @strengths = val
      elsif key == 'organizations'
        @name = val[0]['name']
      elsif key == 'compensation'
        @currency = val['currency']
        @baseSalary = val['minAmount']
      end
    end
  end

  def objective
    @objective
  end

  def postid
    @postid
  end

  def responsabilities
    @responsabilities
  end

  def languages
    @languages
  end

  def strengths
    @strengths
  end
  
  def name
    @name
  end

  def currency
    @currency
  end

  def baseSalary
    @baseSalary
  end
end
