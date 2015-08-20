class Array
    def sum
     return 0 if self.empty?
     self.inject { |sum, n| sum + n }
    end
#############################################
    def square
        return [] if self.empty?
        self.map {|number| number*number}
    end
#############################################

    def square!
        self.map! {|number| number*number}
    end
end