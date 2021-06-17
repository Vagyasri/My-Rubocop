require 'colorize'

# rubocop : disable Layout/LineLength
def layout_ami
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}:#{'[Correctable]'.yellow}Layout/AccessModifierIndentation: Indent access modifiers like#{'private'.yellow}."
end

def layout_arg
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}:#{'[Correctable]'.yellow}Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line."
end

def layout_arr
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}:#{'[Correctable]'.yellow}Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line."
end

# def layout_length
#     puts "#{path}".cyan + ":#{line}:#{char}:" + "C".yellow + ":" + "[Correctable]".yellow + "Layout/

#     "
# end

def lint_amb
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}:#{'[Correctable]'.yellow}Lint/AmbiguousAssignment: Suspicious assignment detected. Did you mean#{'-='.yellow}?"
end

def naming_method
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}: Naming/AccessorMethodName: Do not prefix reader method names with#{'get_'.yellow}."
end

def naming_operator
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}:#{'[Correctable]'.yellow}Naming/BinaryOperatorParameterName: When defining the#{'+'.yellow}operator, name its argument#{'other'.yellow}."
end

def style_mod
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}: Style/AccessModifierDeclarations:#{'private'.yellow}should not be inlined in method definitions."
end

def style_grp
  puts "#{path.to_s.cyan}:#{line}:#{char}:#{'C'.yellow}:#{'[Correctable]'.yellow}Style/AccessorGrouping: Group together all#{'attr_reader'.yellow}attributes."
end

# rubocop : enable Layout/LineLength
