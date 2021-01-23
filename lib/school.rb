# code here!
require 'pry'
class School
    
    attr_accessor :roster
    def initialize(name)
        @name=name
        @roster={}
        
    end

    def add_student(name, grade)
        if @roster.has_key? grade 
            @roster[grade] << name
        else
           @roster[grade]=[name]
        end
    end

    def grade(key)
        @roster[key]
    end
    
    def sort
       @sorted_roster={}
       @roster.keys.each do|sorted_keys|
        @sorted_roster[sorted_keys]= @roster[sorted_keys].sort
       end
       @sorted_roster
    end
 # @@roster=[:"#{student_name}"]<< grade
end


