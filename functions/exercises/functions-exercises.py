# Part 1 A -- Make a Line

def make_line(size):
    return "#" * size
'''
print(make_line(10))'''


# Part 1 B -- Make a Square
# create a function using your make_line function to code a square

def make_square(size):
    for _ in range(size):
        print(make_line(size))

'''print(make_square(8))'''
# Part 1 C -- Make a Rectangle

def make_rectangle(width, height):
    for _ in range(height):
        print(make_line(width))

'''print(make_rectangle(24,8))'''

# Part 2 A -- Make a Stairs

def make_stair(steps):
    for i in range(1, steps + 1):
        print(make_line(i))

'''print(make_stair(10))'''

# Part 2 B -- Make Space-Line 

def make_space_line(size):
    return" " * size
'''print (make_space_line(10))'''

# Part 2 C -- Make Isosceles Triangle

def make_isosceles_triangel(height):
    for i in range(1, height + 1):
        space = make_space_line(height - i)
        pound = make_line(2 *i -1)
        print(space + pound)

'''print(make_isosceles_triangel(15))'''



# Part 3 -- Make a Diamond

def make_diamond(height):
    for i in range(1, height + 1):
        space = make_space_line(height - i)
        pound = make_line(2 *i -1)
        print(space + pound)

    for i in range(height - 1, 0, -1):
        space = make_space_line(height - i)
        pound = make_line(2 *i -1)
        print(space + pound)

'''print(make_diamond(6))'''




