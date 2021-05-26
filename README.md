![](https://img.shields.io/badge/Microverse-blueviolet)

# Rubocop

> In this project I have developed a replica of Rubocop linter which will be helpful in identifying the following errors:
- Layout
    - AccessModifierIndentation
    - ArgumentAlignment
    - ArrayAlignment
- Lint
    - AmbiguousAssignment
    - AmbiguousBlockAssociation
    - AmbiguousOperator
- Naming
    - AccessorMethodName
    - BinaryOperatorParameterName
- Style
    - AccessModifierDeclarations
    - AccessorGrouping

## Built With

- Ruby
- Rspec


## Getting Started

### To get a local copy run the following steps:

- [Copy this link](https://github.com/Vagyasri/My-own-linter.git)
- Open your terminal or command line
- Run "git clone [Paste this link](https://github.com/Vagyasri/My-own-linter.git)"

### Run the Linter

- Simply run "bin/main file_name.rb" in your terminal or command line
  (file_name.rb: The file on which you wasnt to execute this rubocop)

### How to set up tests

- Boot up your terminal and punch in "gem install rspec" to install RSpec
- You can verify your version of RSpec with "rspec --version"
- cd into project directory "MY-OWN-LINTER" and type "rspec --init" to initialize RSpec within the project
- This will generate two files, ".rspec" and "spec/spec_helper.rb"
- You can create the ruby test file inside the spec directory (eg: layput_spec.rb, lint_spec.rb)

### How to run tests

- You can simply run "rspec" in the terminal by cd into the directory in order torun the tests
- You can also run "rspec file-path" for the particular file you want to test from the directory
- You can run "rubocop" inorder to check the linter errors

## Some good and bad examples

### Layout/AccessModifierIndentation
#### EnforcedStyle: indent (default)
~~~ruby
# bad
class Plumbus
private
  def smooth; end
end

# good
class Plumbus
  private
  def smooth; end
end
~~~
#### EnforcedStyle: outdent
~~~ruby
# bad
class Plumbus
  private
  def smooth; end
end

# good
class Plumbus
private
  def smooth; end
end
~~~
### Layout/ArgumentAlignment
#### EnforcedStyle: with_first_argument (default)
~~~ruby
# bad
foo :bar,
  :baz,
  key: value

foo(
  :bar,
    :baz,
    key: value
)

# good
foo :bar,
    :baz,
    key: value

foo(
  :bar,
  :baz,
  key: value
)
~~~
#### EnforcedStyle: with_fixed_indentation
~~~ruby
# bad
foo :bar,
    :baz,
    key: value

# good
foo :bar,
  :baz,
  key: value
~~~
### Layout/ArrayAlignment
#### EnforcedStyle: with_first_element (default)
~~~ruby
# bad
array = [1, 2, 3,
  4, 5, 6]
array = ['run',
     'forrest',
     'run']

# good
array = [1, 2, 3,
         4, 5, 6]
array = ['run',
         'forrest',
         'run']
~~~
#### EnforcedStyle: with_fixed_indentation
~~~ruby
# bad
array = [1, 2, 3,
         4, 5, 6]

# good
array = [1, 2, 3,
  4, 5, 6]
~~~
### Lint/AmbiguousAssignment
~~~ruby
# bad
x =- y
x =+ y
x =* y
x =! y

# good
x -= y # or x = -y
x += y # or x = +y
x *= y # or x = *y
x != y # or x = !y
~~~
### Lint/AmbiguousBlockAssociation
~~~ruby
# bad
some_method a { |val| puts val }

# good
# With parentheses, there's no ambiguity.
some_method(a { |val| puts val })
# or (different meaning)
some_method(a) { |val| puts val }

# good
# Operator methods require no disambiguation
foo == bar { |b| b.baz }

# good
# Lambda arguments require no disambiguation
foo = ->(bar) { bar.baz }
~~~
### Lint/AmbiguousOperator
~~~ruby
# bad
# The `*` is interpreted as a splat operator but it could possibly be
# a `*` method invocation (i.e. `do_something.*(some_array)`).
do_something *some_array

# good
# With parentheses, there's no ambiguity.
do_something(*some_array)
~~~
### Naming/AccessorMethodName
~~~ruby
# bad
def set_attribute(value)
end

# good
def attribute=(value)
end

# bad
def get_attribute
end

# good
def attribute
end

# accepted, incorrect arity for getter
def get_value(attr)
end

# accepted, incorrect arity for setter
def set_value
end
~~~
### Naming/BinaryOperatorParameterName
~~~ruby
# bad
def +(amount); end

# good
def +(other); end
~~~
### Style/AccessModifierDeclarations
~~~ruby
# bad
class Foo

  private def bar; end
  private def baz; end

end

# good
class Foo

  private

  def bar; end
  def baz; end

end
~~~
#### EnforcedStyle: inline
~~~ruby
# bad
class Foo

  private

  def bar; end
  def baz; end

end

# good
class Foo

  private def bar; end
  private def baz; end

end
~~~
#### AllowModifiersOnSymbols: true (default)
~~~ruby
# good
class Foo

  private :bar, :baz

end
~~~
#### AllowModifiersOnSymbols: false
~~~ruby
# bad
class Foo

  private :bar, :baz

end
~~~
### Style/AccessorGrouping
#### EnforcedStyle: grouped (default)
~~~ruby
# bad
class Foo
  attr_reader :bar
  attr_reader :baz
end

# good
class Foo
  attr_reader :bar, :baz
end
~~~
#### EnforcedStyle: separated
~~~ruby
# bad
class Foo
  attr_reader :bar, :baz
end

# good
class Foo
  attr_reader :bar
  attr_reader :baz
end
~~~

## Author

👤 **Bhagyashree Patra**

- GitHub: [@Vagyasri](https://github.com/Vagyasri)
- Twitter: [@Vagyasri](https://twitter.com/Vagyasri)
- LinkedIn: [Bhagyashree Patra](https://www.linkedin.com/in/bhagyashree-patra-029bb059/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Vagyasri/My-own-linter/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgement

https://docs.rubocop.org/rubocop/cops_style.html