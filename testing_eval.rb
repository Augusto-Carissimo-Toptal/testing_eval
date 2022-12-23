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

