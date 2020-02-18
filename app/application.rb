
class Application

    def call(env)
      resp = Rack::Response.new
      current_time = Time.now
      if current_time.hour < 12
        resp.write "Top of the morning to you!"
      elsif current_time.hour >= 12
        resp.write "Why good afternoon, my fine sir"
      end
      
      resp.finish
    end
  
  end


  