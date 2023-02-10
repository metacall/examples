import random

def shuffle(string):
  tempList = list(string) # Convert the string to a list
  random.shuffle(tempList) # Shuffle the list
  return ''.join(tempList) # Convert the list to a string again

def getRandomPassword(length: int) -> str:
    numUpper = length // 4 # Get the number of uppercase letters
    numLower = length // 4 # Get the number of lowercase letters
    numSpecial = length // 4 # Get the number of special characters 
    numNumbers = length - numUpper - numLower - numSpecial # Get the number of numbers
    # Get lists of random characters
    upperCaseLetters = [chr(random.randint(65,90)) for _ in range(numUpper)] # Generate a list of 2 random Uppercase letters (based on ASCII code)
    lowerCaseLetters = [chr(random.randint(97,122)) for _ in range(numLower)] # Generate a list of 2 random Lowercase letters (based on ASCII code)
    numbers = [str(random.randint(0,9)) for _ in range(numNumbers)] # Generate a list of 2 random numbers (based on ASCII code)
    specialLetters = [chr(random.randint(33,47)) for _ in range(numSpecial)] # Generate a list of 2 random special characters (based on ASCII code)
    #Generate password using all the characters, in random order
    password = ''.join(upperCaseLetters + lowerCaseLetters + specialLetters + numbers)
    password = shuffle(password)
    return password


