# Problem

# You have a class called Map with attributes @height, @width, @cursor
# You have a class called Cursor with attributes @x, @y
# We want a method Map#move() that moves the cursor to the :left, :right, :up, :down
# Map#move(symbol) -> Map with new cursor
#5 |_|_|_|_|_|                             5 |_|_|_|_|_|
#4 |_|_|_|_|_|                             4 |_|_|_|_|_|
#3 |_|_|x|_|_|  ---> map.move(:left) --->  3 |_|x|_|_|_|
#2 |_|_|_|_|_|                             2 |_|_|_|_|_|
#1 |_|_|_|_|_|                             1 |_|_|_|_|_|
#   1 2 3 4 5                                 1 2 3 4 5
# defined? Map


class Map
end

class Cursor
end

class Test
  
  def assert_exist(_class)
    if defined? _class
      return 'Pass'
    else
      return <<~MSG
      Class doesnt exist
      MSG
    end
  end

  def assert_kind_of(_class, expected_class)
    if _class.class == expected_class
      return 'Pass'
    else
      return <<~MSG
      Expected class is: #{expected_class}
      but instead is: #{_class}
      MSG
    end
  end

  def assert_same(class_atrr, expected_attr)
    if class_atrr.attr == expected_attr
      return 'Pass'
    else
      return <<~MSG
      Expected class attribute is: #{expected_attr}
      but instead is: #{class_atrr.attr}
      MSG
    end
  end

end

test = Test.new

puts test.assert_exist(Map)
puts test.assert_exist(Cursor)

puts test.assert_kind_of(Map.new, Map)
puts test.assert_kind_of(Cursor.new, Cursor)

puts test.assert_same(Map.new(5,5,5), 5) #height
# puts test.assert_same(Map.new(5,5,5), 5) #width
# puts test.assert_same(Map.new(5,5,5), 5) #cursor
# puts test.assert_same(Cursor.new(1,1, 1) #x
# puts test.assert_same(Cursor.new(1,1, 1) #y