require 'pry'

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name,grade)
        if self.roster.key?(grade)
            self.roster[grade] << name
        else
            self.roster[grade] = []
            self.roster[grade] << name
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each{|grade , names| self.roster[grade] = names.sort}
    end




end