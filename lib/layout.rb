#!/usr/bin/env ruby

class Layout
  def indentation
    if @file.lines[line_number].check_until(/^\s*end/i)
      @indent -= 2
      if @file.lines[line_number].scan_until(/^\s*/).split('').count != @indent
        @error_list['AccessModifierIndentation'] << line_number + 1
      end
    elsif @file.lines[line_number].check_until(/^\s*\w/)
      @specific_terms(line_number)
    end
  end

  def argument_alignment
  end

  def array_alignment
  end
end
