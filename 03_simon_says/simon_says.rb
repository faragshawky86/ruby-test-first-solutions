def echo (word)
    return word
end
##############################################
def shout (toshout)
    return toshout.upcase
end
##############################################
def repeat (word, repetition=2)  #Defaulting the number of repetition to 2 unless otherwise is specified  
   
   result = []
   repetition.times do |i|
       result [i]=word 
   end
   result.join(" ")
end
###############################################

def start_of_word(string,idx)
    return string[0..idx-1]
    
end
###############################################
def first_word(string)
    return string.split(' ')[0]  # I like one liners
end
###############################################

def titleize (string)
    words = string.split(" ")
    little_words = ['and','the','over']
    words.each do |word|
        word.capitalize! unless little_words.include?(word)
        word.capitalize! if word == words[0] #capitalize first word
        word.capitalize! if word = words [-1]#capitalize last word
    end
    words.join(" ")
end

###############################################
