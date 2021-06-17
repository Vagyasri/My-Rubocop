require 'strscan'

class FileReader
  attr_reader :read_file, :lines
  def initialize(path)
    @read_file = File.open(path)
    @lines = []
  end

  def read_lines
    @read_file.each_with_index do |line, ind|
      @lines[ind] = StringScanner.new(line)
    end
  end
end