#!/usr/bin/env ruby

class Naming
  def accessor_method_name
    x = set_ || get_
    x&.replace('')
  end

  def binary_operator_parameter_name; end
end
