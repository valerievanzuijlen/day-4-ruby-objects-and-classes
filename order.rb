class Order
  attr_accessor :content
  def initialize
    @content = []
  end
  def add(pizza)
    @content << pizza
  end
  def has_items?
    return @content.length > 0
  end
  def value
    @content.reduce(0){|sum,pizza| sum + pizza.price }
  end

  def print
    puts "Your order is:"
    puts "------------------"
    @content.each do |pizza|
      puts "#{pizza.name} - #{pizza.price}"
    end
    puts "------------------"
  end

end
