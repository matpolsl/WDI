import random

x = random.randint(1,100)
liczba = 0
print (x)
while liczba != x:
	liczba = int(input("Wprowadź liczbę: "))
	if(liczba > x):
		print ("Liczba jest za duża")
	if(liczba < x):
		print ("Liczba jest za mała")
	if(liczba == x):
		print ("brawo, mój przyjacielu")
