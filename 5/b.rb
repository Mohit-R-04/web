class Product
  attr_accessor :name, :price, :description

  def initialize(name, price, desc)
    @name = name
    @price = price
    @description = desc
  end

  def discount
    @price * 0.1
  end
end


class Book < Product
  attr_accessor :author, :isbn

  def initialize(name, price, desc, author, isbn)
    super(name, price, desc)
    @author = author
    @isbn = isbn
  end

  def discount
    @price * 0.2
  end
end


class Clothing < Product
  attr_accessor :size, :color

  def initialize(name, price, desc, size, color)
    super(name, price, desc)
    @size = size
    @color = color
  end

  def discount
    @price * 0.15
  end
end

b = Book.new("Ruby Book",500,"Guide","Matz","111")
c = Clothing.new("T-Shirt",1000,"Cotton","M","Blue")

puts b.author
puts c.size