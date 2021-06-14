require 'colorize'

class FileReader
  attr_reader :err_msg, :lines, :path, :lines_count

  def initialize(path)
    @err_msg = ''
    @path = path
    begin
      @lines = File.readlines(@path)
      @lines_count = @lines.size
    rescue StandardError => e
      @lines = []
      @err_msg = "Check file name or path again\n".colorize(:light_red) + e.to_s.colorize(:red)
    end
  end
end
