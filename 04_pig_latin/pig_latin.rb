def translate (input)
   my_words = input.split(" ") 
   my_words.map! {|word| convert(word)}
    
    return my_words.join(" ")
end


def convert(word)
    vowels = ["a","e","i","o","u"]
    if vowels.include?(word[0])
       
        return word+'ay'
        elsif  (word[0]=='q')&&(word[1]=='u')
        word = word.slice(2..word.length)+'qu'
        convert(word)
            
    else
        word = word.slice(1..word.length)+word[0]
        convert(word)
    end
end