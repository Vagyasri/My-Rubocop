require 'file_reader'

def cop_checker(path)
    @file = FileReader.new(path)
    @error_list = {
        "AccessModifierIndentation" => [],
        "ArgumentAlignment" => [],
        "ArrayAlignment" => [],
        "LineLength" => [],
        "AmbiguousAssignment" => [],
        "AccessorMethodName" => [],
        "BinaryOperatorParameterName" => [],
        "AccessModifierDeclarations" => [],
        "AccessorGrouping" => []
    }
    @specific_terms = [/private/i, /public/i]
    @indent = 0
    @file.read_lines
    error_checking
end   
def error_checking
  file.lines.length.times do |line_number|
    
  end  
end