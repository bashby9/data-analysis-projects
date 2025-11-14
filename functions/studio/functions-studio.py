# We want to COMPLETELY reverse a list by flipping the order of the entries AND flipping the order of characters in each element.

# a) Define a 'reverse_characters' function. Give it one parameter, which will be the string to reverse.
def reverse_characters(text):
    return(text)

# b) Within the function, use the 'list' function to split a string into a list of individual characters

def reverse_characters(text):
    character_list = list(text)
    return character_list

'''print (reverse_characters("smile"))'''
# c) 'reverse' your new list.
def reverse_characters(text):
    character_list = list(text)
    character_list.reverse()
    return character_list
  
# d) Use 'join' to create the reversed string and return that string from the function.
def reverse_characters(text):
    character_list = list(text)
    character_list.reverse()
    reversed_string="".join(character_list)
    return reversed_string
'''print (reverse_characters("smile"))'''
# e) Create a variable of type string to test your new function. 
#test_word = smile
# # f) Use 'print(reverse_characters(my_variable_name))'; to call the function and verify that it correctly reverses the characters in the string.
'''print(reverse_characters("smile"))'''
# g) Use method chaining to reduce the lines of code within the function.



# 2) The 'split' method does not work on numbers, but we want the function to return a number with all the digits reversed (e.g. 1234 converts to 4321 and NOT the string "4321")
# a) Add an if statement to your reverse_characters function to check the typeof the parameter.
def reverse_characters(number):
    if type(number) == str:
        print("all good")
    elif type(number) == int:
        print("number value")
'''print(reverse_characters(1234))'''
# b - d) If type is ‘string’, return the reversed string as before. If type is ‘number’, convert the parameter to a string, reverse the characters, then convert it back into a number. Return the reversed number.

def reverse_characters(value):
    if type(value) == str:
        character_list = list(value)
        character_list.reverse()
        return "".join(character_list)
    elif type(value) == int:
        convert_to_string = str(value)
        character_list = list(convert_to_string)
        character_list.reverse()
        reversed_string = "".join(character_list)

        return int(reversed_string)

# e) Be sure to print the result returned by the function to verify that your code works for both strings and numbers. Do this before moving on to the next steps.
'''print(reverse_characters("smile"))
print(reverse_characters(1234))'''
# 3) Create a new function with one parameter, which is the list we want to change. The function should:
# a) Define and initialize an empty list.
def reversed_list(list_name):
    new_list = []
    
# b) Loop through the old list.
def reversed_list(list_name):
    new_list = []
    for item in list_name:
        print()   
# c) For each element in the old list, call reverse_characters to flip the characters or digits.
def reversed_list(list_name):
    new_list = []
    for item in list_name:
        reversed_item = reverse_characters(item)
# d) Add the reversed string (or number) to the list defined in part ‘a’.
def reversed_list(list_name):
    new_list = []
    for item in list_name:
        reversed_item = reverse_characters(item)
        new_list = new_list + [reversed_item]
    return new_list
# e) Return the final, reversed list.
list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']
print (reversed_list(list_test3))

# f) Be sure to print the results from each test case in order to verify your code.
#results from list 1 = 'elppa', 'otatop', 'sdroW dezilatipaC'
#results from list 2 = [321, 7988, 24, 8611, 9035768]
#results from list 3 = ['olleh', 'dlrow', 321, 'egnaro']
list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']
