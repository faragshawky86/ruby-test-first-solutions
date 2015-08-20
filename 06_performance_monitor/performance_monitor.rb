def measure count=1 #Defaulting the test to be run at least one time

  total_time = 0
  count.times do
  starting = Time.now  #Gets the time of the local machine before passing the block

    yield

    ending = Time.now #Gets the time after passing the block
    total_time += ending - starting
  end
  total_time / count #returning the average if the test was done multiple times
end