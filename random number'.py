import random
number = random.randrange(0,21)
user = input("Enter any number you guess")
if int(user) >= int(number):
    print("OOPs enterd number is larger")

elif int(user) <= int(number):
    print("Entered number is smaller then expectation")

elif int(user) == int(number):
    print("Yay, enered number is correct")