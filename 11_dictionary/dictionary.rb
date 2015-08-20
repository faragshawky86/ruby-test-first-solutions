class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end
##########################################
  def add(entry)
    if entry.class == Hash
      key = nil
      value = nil
      entry.each_key {|x| key = x}
      entry.each_value {|y| value = y}
      @entries[key] = value
    elsif entry.class == String
      @entries[entry] = nil
    end
  end
 ###########################################  
  def find(key)

    keys = []
    entries.each_key do |x|
      if /#{key}/.match(x)
        puts x
        keys << x 
      end
    end
    
    if keys.length 
      result = Hash.new
      keys.each do |x|
        result[x] = @entries[x]
      end
     return  result
    else
      {}
    end
  end
###########################################
  def include?(key)
    @entries.each_key do |k|
      return true if k == key
    end
    false
  end

############################################
  def keywords
   return  @entries.keys.sort
  end

  def printable
    result = ""
    self.keywords.each do |key|
      result += "[#{key}] \"#{entries[key]}\"\n"
    end
    result.chomp
  end

end