require 'colorize'

def layout_ami
  puts "#{path}:#{line}:#{char}: C: [Correctable] Layout/AccessModifierIndentation: Indent access modifiers like private."
end

def layout_arg
    puts "#{path}:#{line}:#{char}: C: [Correctable] Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line."
end 

def layout_arr
    puts "#{path}:#{line}:#{char}: C: [Correctable] Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line."
end 

# def layout_length
#     puts "#{path}:#{line}:#{char}: C: [Correctable] Layout/ 
    
#     "
# end 

def lint_amb
    puts "#{path}:#{line}:#{char}: C: [Correctable] Lint/AmbiguousAssignment: Suspicious assignment detected. Did you mean -=?"
end 

def naming_method
    puts "#{path}:#{line}:#{char}: C: Naming/AccessorMethodName: Do not prefix reader method names with get_."
end

def naming_operator
    puts "#{path}:#{line}:#{char}: C: [Correctable] Naming/BinaryOperatorParameterName: When defining the + operator, name its argument other."
end  

def style_mod
    puts "#{path}:#{line}:#{char}: C: Style/AccessModifierDeclarations: private should not be inlined in method definitions."
end

def style_grp
    puts "#{path}:#{line}:#{char}: C: [Correctable] Style/AccessorGrouping: Group together all attr_reader attributes."
end