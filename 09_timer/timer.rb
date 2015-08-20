class Timer

  def initialize #get the system time 
    @starting_time = Time.now
  end
#####################################################################
  def seconds
    0  # to 0 seconds 
  end
#####################################################################

  def seconds=(time)
    @elapsed = time
  end
 
#####################################################################
  def time_string
    hours = @elapsed / 60 / 60  
    minutes = (@elapsed - hours * 60*60) / 60
    seconds = @elapsed - hours * 60*60 - minutes * 60
   return  shape(hours)+":"+shape(minutes)+":"+shape(seconds)
  end
#####################################################################
  def shape(n)
    
      return "0" + n.to_s if n < 10
      n.to_s
  end
#####################################################################
end