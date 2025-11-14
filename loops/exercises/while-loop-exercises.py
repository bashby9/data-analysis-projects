# Define three variables for the LaunchCode shuttle - one for the starting fuel level, another for the number of astronauts aboard, and the third for the altitude the shuttle reaches.
starting_fuel_level = 11000
num_astronauts_aboard = 6
max_altitude_shuttle = 8000


# Exercise #1: Construct while loops to do the following:
  # a. Query the user for the starting fuel level. Validate that the user enters a positive, integer value greater than 5000 but less than 30000. 

'''starting_fuel_level = int(input("Submit your starting fuel level:"))

while starting_fuel_level <= 5000 or starting_fuel_level >= 30000:
    print("Invalid fuel level. Must be between 5000 and 30000.")
    starting_fuel_level = int(input("Please fix fuel level and re-submit"))
      

# b. Use a second loop to query the user for the number of astronauts (up to a maximum of 7). Validate the entry.

num_astronauts_aboard = int(input("Submit number of astronauts aboard shuttle:"))

while num_astronauts_aboard > 7:
  print("This shuttle can only hold 7 or fewer astronauts.")
  num_astronauts_aboard = int(input("Please execute excess and resubmit"))
print("Astronaut count accepted:", num_astronauts_aboard, "- thank you for your submission")

# c. Use a final loop to monitor the fuel status and the altitude of the shuttle. Each iteration, decrease the fuel level by 100 units for each astronaut aboard. Also, increase the altitude by 50 kilometers.

while starting_fuel_level - (100 * num_astronauts_aboard) >= 0:
    starting_fuel_level -= 100 * num_astronauts_aboard
    max_altitude_shuttle += 50
print("Ending fuel level:", starting_fuel_level)
print("Ending altitude:", max_altitude_shuttle)'''

# Exercise #2: Print the result with the phrase, The shuttle gained an altitude of ___ km and has ___ kg of fuel left. Fill in the blanks with the altitude and fuel level values.

# If the altitude is 2000 km or higher, add “Orbit achieved!” Otherwise add, “Failed to reach orbit.”

print(f"The shuttle gained an altitude of {max_altitude_shuttle} km and has {starting_fuel_level} kg of fuel left.")
if max_altitude_shuttle >= 2000:
      print("Orbit achieved!")
else:
     print("Failed to reach orbit.")