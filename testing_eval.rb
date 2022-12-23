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

#Map --------------------------------
class Map
  attr_reader :height, :width, :cursor

  def initialize(height, width, cursor)
    @height = height
    @width = width
    @cursor = cursor
  end

end





# Cursor -----------------
class Cursor
  attr_reader :x, :y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def left
    @x -= 1 
    return [@x, @y]
  end

  def right
    @x += 1 
    return [@x, @y]
  end

  def up
    @y += 1 
    return [@x, @y]
  end

  def down
    @y -= 1 
    return [@x, @y]
  end
end




# Test -------------------
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
    if class_atrr == expected_attr
      return 'Pass'
    else
      return <<~MSG
      Expected class attribute is: #{expected_attr}
      but instead is: #{_class.class_atrr}
      MSG
    end
  end

  def assert_Cursor_method(class_method, array_position)
    if class_method == array_position
      return 'Pass'
    else
      <<~MSG
       Expected method to return: #{array_position}
       Instead return:            #{class_method}
       MSG
    end
  end

  # def assert_move_Map(class_method, array_position)
  #   if class_method == array_position
  #     return 'Pass'
  #   else
  #     <<~MSG
  #     Expected #move to return: #{array_position}
  #     Instead return:           #{class_method}
  #     MSG
  #   end
  # end


end

test = Test.new

puts test.assert_exist(Map)
puts test.assert_exist(Cursor)

puts test.assert_kind_of(Map.new(5,5,5), Map)
puts test.assert_kind_of(Cursor.new(1,1), Cursor)

puts test.assert_same(Map.new(5,5,5).height, 5) #height
puts test.assert_same(Map.new(5,5,5).width, 5) #width
puts test.assert_same(Map.new(5,5,5).cursor, 5) #cursor
puts test.assert_same(Cursor.new(1,1).x, 1) #x
puts test.assert_same(Cursor.new(1,1).y, 1) #y

puts test.assert_Cursor_method(Cursor.new(3,3).left, [2,3]) #left
puts test.assert_Cursor_method(Cursor.new(3,3).right, [4,3]) #right
puts test.assert_Cursor_method(Cursor.new(3,3).up, [3,4]) #up
puts test.assert_Cursor_method(Cursor.new(3,3).down, [3,2]) #down

