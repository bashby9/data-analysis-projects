proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
'''for i in strings:
    print(i)
    print("," in i)
    print(";" in i)
    print(" " in i)

# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.
for i in strings:
    print(i)

if "," in i:
    split_list = i.split(",")
    split_list.reverse()
    split_string = ",".join(split_list)
    print("New String", split_string)

if "," in proto_list1:
    array = proto_list1.split(",")
    array.reverse()
    new_proto_list1 = ",".join(array)
print(new_proto_list1)

# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.
if ";" in proto_list2:
    array = proto_list2.split(";")
    array.sort()
    new_proto_list2 = ";".join(array)
print(new_proto_list2)


# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.

if " " in proto_list3:
    array = proto_list3.split(" ")
    array.sort()
    array.reverse()
    new_proto_list3 = " ".join(array)
print(new_proto_list3)


# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
if ", " in proto_list4:
    array = proto_list4.split(", ")
    array.reverse()
    seperator = ","
    new_proto_list4 = ", ".join(array)
print(new_proto_list4)'''

if (" " in proto_list4):
    array = proto_list4.split(" ")
    array.reverse()
    separator = ""
    new_proto_list4 = separator.join(array)
print(new_proto_list4)