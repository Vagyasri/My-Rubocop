#!/usr/bin/env ruby

class Layout
  def indentation
    if @file.lines[line_num].check_until(/^\s*end/i)
      @indent -= 2
      if @current_file.file_lines[line_num].scan_until(/^\s*/).split('').count != @indent
        @error_hash['Indentation Error Detected'] << line_num + 1
      end
    elsif @current_file.file_lines[line_num].check_until(/^\s*\w/)
      check_for_reserved_words(line_num)
    end
  end

  def argument_alignment
  end

  def array_alignment
  end
end
