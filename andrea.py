import random

print('Hvem er kulest av disse to personene-programmet')

navn1 = raw_input("Skriv navnet pa den ene personen: ")
navn2 = raw_input("Skriv navnet pa den ene personen: ")
randomTall = random.random()

if randomTall < 0.5:
	print(navn1 + ' er kulest! :)')
else:
	print(navn2 + ' er kulest! :)')