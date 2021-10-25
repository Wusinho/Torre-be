class JobRequest
  attr_accessor :response, :title, :responsabilities, :name, :currency, :baseSalary
  def initialize
    @response = ''
    @title = ''
    @responsabilities = ''
    @name = ''
    @currency = ''
    @baseSalary = ''
    @postid = ''
  end

  def request(id)
    @response =  RestClient.get("https://torre.co/api/suite/opportunities/#{id}")
    user_info = JSON.parse(@response)

    user_info.each do |key,val|
      if key == 'objective'
        @title = val
      elsif key == 'id'
        @postid = val
      elsif key == 'details'
        @responsabilities = val[0]['content']
      elsif key == 'serpTags'
        @name = val['identifier']['name']
        @currency = val['baseSalary']['currency']
        @baseSalary = val['baseSalary']['value']['value']
      end
   end
  end

  def job_save
    return [ @title, @responsabilities, @name, @currency, @baseSalary, @postid ]
  end
  
end
