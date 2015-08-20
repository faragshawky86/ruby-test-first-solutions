
class Friend

  def greeting(name = nil)  
    if name == nil #returning just hello if no argument was passed to the method
      "Hello!"
    else
      "Hello, #{name}!"
    end
  end

end