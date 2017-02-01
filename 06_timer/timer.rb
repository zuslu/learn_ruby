class Timer
  #write your code here
  attr_accessor :seconds
  def initialize 
  	@seconds = 0
  end

  def time_string
  	if @seconds.to_s.length > 1
  		if(@seconds < 60)
  			@seconds = "00:00:"+ @seconds.to_s
 
  		elsif(@seconds > 60 && @seconds < 600)
  			sec = (@seconds %60).to_s 
  			min = (@seconds /60).to_s
  			if(sec.length == 1)
  				sec = "0"+ sec
  			end
  			@seconds= "00:0"+ min + ":" + sec

  		elsif(@seconds >= 600 && @seconds<3600)
  			min = (@seconds /60).to_s 
  			sec = (@seconds % 60).to_s
  			if(min.length == 1 )
  				min = "0"+ min
  			end
  			if(sec.length == 1)
  				sec ="0" + sec
  			end	
  			@seconds = "00:"+ min + ":" + sec

  		elsif(@seconds >= 3600) 
  			hour = (@seconds / 3600).to_s
  			min = ((@seconds % 3600)/ 60).to_s
  			sec = ((@seconds % 3600) % 60).to_s
  			if(min.length == 1 )
  				min = "0"+ min
  			end
  			if(sec.length == 1)
  				sec ="0"+ sec
  			end	
  			if(hour.length == 1)
  				hour = "0"+ hour
  			end
  			@seconds = hour + ":" + min + ":" + sec 
  		end 
  	else 
  		@seconds = "00:00:0"+ @seconds.to_s
  	end 
  end

end