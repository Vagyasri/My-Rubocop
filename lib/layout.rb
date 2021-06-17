#!/usr/bin/env ruby

module Layout
  class Indentation
    def find_beginning(keyword)
      keyword =~ /(^\s*private\s)|(^\s*public\s)|(^\s*def\s)|(\sdo\s)|(^\s*if)|(\sdo$)/
    end

    def find_ending(keyword)
      keyword =~ /(end$)/
    end

    def find_else(keyword)
      keyword =~ /(^\s*els)/
    end
  end

  class ArgumentAlignment
  end

  class ArrayAlignment
  end
end
