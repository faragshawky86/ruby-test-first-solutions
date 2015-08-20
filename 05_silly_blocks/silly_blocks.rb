def reverser (&block)
  return yield.split(' ').map(&:reverse).join(' ')
end

##############################################################

def adder value = 1
 return yield + value
end

##############################################################
def repeater num = 1
  num.times do
    yield
  end
end
