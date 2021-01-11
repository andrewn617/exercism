class HelloWorld
  attr_reader :greeted

  def self.hello
    new(:world).greet
  end

  def initialize(greeted)
    @greeted = greeted
  end

  def greet
    "Hello, #{greeted.to_s.capitalize}!"
  end
end