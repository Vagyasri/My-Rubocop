#!/usr/bin/env ruby

class Plumbus
private
  def smooth
  end
end
foo :bar,
  :baz,
  key: value

foo(
  :bar,
    :baz,
    key: value
)

array = [1, 2, 3,
  4, 5, 6]
array = ['run',
     'forrest',
     'run']

x =- y
x =+ y
x =* y
x =! y

def set_attribute(value)
end

def get_attribute
end

def +(amount); end

class Foo

  private def bar; end
  private def baz; end

end

class Foo
  attr_reader :bar, :baz
end

# def addition(a, b)
#   a + b
# end

p addition(5, 7)
