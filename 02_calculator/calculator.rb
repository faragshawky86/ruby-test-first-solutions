def add (num1, num2)
    return num1+num2
end
############################################
def subtract (num1, num2)
    return num1-num2
end
############################################
def sum (arr)
    total=0
    arr.each do |i|
        total = total + i
    end
    return total
end
#############################################
def multiply(*args) #Handelling an unnown list of arguments
    result= 1
   
    args.each {|arg| result=result * arg} #My way of looping through the list of arguments, there must be a better way OFC! 
    result
end

#############################################
def power (base,pow)
    return (base**pow)
end
#############################################

def factorial (num)
  return 0 if num==0 
  return  (1..num).inject {|product, num| product * num }
end

#############################################

