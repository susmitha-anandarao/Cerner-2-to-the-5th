import math

#Print pi to the specified decimal for cerner_2^5_2018

number_of_places = input("Enter number of decimal places")
print('PI = {:.{}f}'.format(math.pi, number_of_places))
