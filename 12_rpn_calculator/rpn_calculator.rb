class RPNCalculator
    def initialize
     @stack = []
    end  
    
    def push(n)
     @stack << n
    end
#################################################    
    def plus
     if @stack.length < 2
       self.error_message
     else
       @stack << @stack.pop + @stack.pop
     end
    end
#################################################
    def minus
     if @stack.length < 2
       self.error_message
     else
       @stack << (@stack.pop - @stack.pop)*-1
     end
    end
#################################################
    def divide
     if @stack.length < 2
       self.error_message
     else
      second = @stack.pop
      first = @stack.pop
      @stack << first.to_f / second.to_f
     end
    end
#################################################
    def times
     if @stack.length < 2
       self.error_message
     else
      second = @stack.pop
      first = @stack.pop
      @stack << first * second
     end
    end
#################################################
    def value
     if @stack.length < 1
       self.error_message
     else
       @stack[-1] #returns the last elemnt of the stack where the result of all calculations is stored
     end
    end
#################################################
    def tokens(string)
    @tokens = string.split{" "}
    @tokens.map! do |x|
       case x 
       when  "+"
         :+
       when  "-"
         :-
       when  "*"
         :*
       when  "/"
         :/
       else
          x.to_i
       end
       
      end
      @tokens
    end
#################################################
    def evaluate(string)
     @tokens = tokens(string)
     @stack = []
     while @tokens.length > 0
      self.process
     end
     return @stack[0]
    end
#################################################
    def error_message
     fail "calculator is empty"
    end
#################################################

#################################################
    def process
      token = @tokens.shift
      if (token.class == Symbol)
        second = @stack.pop
        first = @stack.pop.to_f
        @stack << eval(first.to_s + token.to_s + second.to_s)  #The eval method takes a regular string and transfer it to a ruby code & excute it
      else
        @stack << token 
      end  
    end

#################################################
#################################################
end