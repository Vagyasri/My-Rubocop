#!/usr/bin/env ruby

module Lint
  class ambiguous_assignment
    attr_reader :file
    def initialize(file)
      @file = file
    end
    def err_msg
      print "#{file}:#{index + 1} Lint/AmbiguousAssignment: Suspicious assignment detected. Did you mean `%<op>s`?"
    end
    def assign
      @bad_assign = %w[=- =+ =* =! =/ =%]
      @good_assign = ["= -" "= +" "= *" "= !" "= /" "= %"] || %w[-= += *= != /= %=]
    end
    def replace
      bad_assign[i].replace(good_assign[i])
    end
    def operation
      File.readlines(file, chomp: true).each_with_index do |line, index|
        if @bad_assign.any?
          puts err_msg
          replace
        end
      end    
    end  
  end

  class ambiguous_block_association
  end

  class ambiguous_operator
  end
end
