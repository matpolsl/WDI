from time import sleep
import sys
import pyfiglet #biblioteka do ascii tekstu
import random
import os
import datetime

def naglowek():
    os.system('CLS') #czyszczenie konsoli
    ascii_banner = pyfiglet.figlet_format("Zgadnij liczbę!")
    print(ascii_banner) #wypisanie baneru z tekstem powyżej 

def menuP():
    print("Rozpocznij grę [1]")
    print("Auto-gra [2]")
    print("Uproszczony kod [3]")
    print("Autorzy [4]")
    print("Wyjście [0]")
    menuS()


def menuS():
    menu = int(input("Wybierz opcję z menu: "))
    if(menu==1): gra()
    elif(menu==2): autogra() #gra pc
    elif(menu==3): kod() #uproszczony kod
    elif(menu==4): autorzy() #autorzy
    elif(menu==0): sys.exit(0) #zamknięcie programu
    else: menuS()

def gra():
    naglowek()
    x = random.randint(1,100) #wylosowanie liczby z zakresu 1-100
    liczba = 0
    podejscia = int(0)
    start = datetime.datetime.now()
    #print (x)
    print("╔══════════════════════════════╦═════════════════════════════╗")
    napis = ("Podejść: "+ str(int(podejscia)))
    napis = napis.ljust(28)
    napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
    napis2 = napis2.ljust(29)
    print("║ "+napis+" ║"+napis2+"║")
    print("╚══════════════════════════════╩═════════════════════════════╝")
    while liczba != x:
        liczba = int(input("Wprowadź liczbę: "))
        if(liczba > x):
            naglowek()
            podejscia= podejscia + 1
            print("╔══════════════════════════════╦═════════════════════════════╗")
            napis = ("Podejść: "+ str(int(podejscia)))
            napis = napis.ljust(28)
            napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
            napis2 = napis2.ljust(29)
            print("║ "+napis+" ║"+napis2+"║")
            print("╚══════════════════════════════╩═════════════════════════════╝")
            print ("Liczba "+str(int(liczba))+" jest za duża")
        if(liczba < x):
            naglowek()
            podejscia= podejscia + 1
            print("╔══════════════════════════════╦═════════════════════════════╗")
            napis = ("Podejść: "+ str(int(podejscia)))
            napis = napis.ljust(28)
            napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
            napis2 = napis2.ljust(29)
            print("║ "+napis+" ║"+napis2+"║")
            print("╚══════════════════════════════╩═════════════════════════════╝")
            print ("Liczba "+str(int(liczba))+" jest za mała")
        if(liczba == x):
            naglowek()
            podejscia= podejscia + 1
            print("╔══════════════════════════════╦═════════════════════════════╗")
            napis = ("Podejść: "+ str(int(podejscia)))
            napis = napis.ljust(28)
            napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
            napis2 = napis2.ljust(29)
            print("║ "+napis+" ║"+napis2+"║")
            print("╚══════════════════════════════╩═════════════════════════════╝")
            ascii_banner = pyfiglet.figlet_format("Brawo, moj przyjacielu!")
            print(ascii_banner)
            menuP()

def autogra():
    naglowek()
    x = random.randint(1,100) #wylosowanie liczby z zakresu 1-100
    liczba = 0
    podejscia = int(0)
    start = datetime.datetime.now()
    #print (x)
    print("╔══════════════════════════════╦═════════════════════════════╗")
    napis = ("Podejść: "+ str(int(podejscia)))
    napis = napis.ljust(28)
    napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
    napis2 = napis2.ljust(29)
    print("║ "+napis+" ║"+napis2+"║")
    print("╚══════════════════════════════╩═════════════════════════════╝")
    m= 1
    w= 100
    while liczba != x:
        sleep(1)
        liczba = random.randint(m,w)
        print("Wprowadzam liczbę: "+str(int(liczba)))
        sleep(1)
        if(liczba > x):
            naglowek()
            podejscia= podejscia + 1
            print("╔══════════════════════════════╦═════════════════════════════╗")
            napis = ("Podejść: "+ str(int(podejscia)))
            napis = napis.ljust(28)
            napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
            napis2 = napis2.ljust(29)
            print("║ "+napis+" ║"+napis2+"║")
            print("╚══════════════════════════════╩═════════════════════════════╝")
            print ("Liczba "+str(int(liczba))+" jest za duża")
            w=liczba
        if(liczba < x):
            naglowek()
            podejscia= podejscia + 1
            print("╔══════════════════════════════╦═════════════════════════════╗")
            napis = ("Podejść: "+ str(int(podejscia)))
            napis = napis.ljust(28)
            napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
            napis2 = napis2.ljust(29)
            print("║ "+napis+" ║"+napis2+"║")
            print("╚══════════════════════════════╩═════════════════════════════╝")
            print ("Liczba "+str(int(liczba))+" jest za mała")
            m=liczba
        if(liczba == x):
            naglowek()
            podejscia= podejscia + 1
            print("╔══════════════════════════════╦═════════════════════════════╗")
            napis = ("Podejść: "+ str(int(podejscia)))
            napis = napis.ljust(28)
            napis2 = ("Czas: "+ str(datetime.datetime.now() - start))
            napis2 = napis2.ljust(29)
            print("║ "+napis+" ║"+napis2+"║")
            print("╚══════════════════════════════╩═════════════════════════════╝")
            ascii_banner = pyfiglet.figlet_format("Brawo, moj przyjacielu!")
            print(ascii_banner)
            menuP()
def kod():
    os.system('CLS') #czyszczenie konsoli
    ascii_banner = pyfiglet.figlet_format("Pigułka")
    print(ascii_banner)
    #Kod wypisany w jednej komendzie
    print("import random\n\nx = random.randint(1,100)\n\nwhile liczba != x:\n\tliczba = int(input(\"Wprowadź liczbę: \"))\n\tif(liczba > x):\n\t\tprint (\"Liczba jest za duża\")\n\tif(liczba < x):\n\t\tprint (\"Liczba jest za mała\")\n\tif(liczba == x):\n\t\tprint (\"brawo, mój przyjacielu\")")
    input()
    naglowek()
    menuP()
def autorzy():
    os.system('CLS') #czyszczenie konsoli
    ascii_banner = pyfiglet.figlet_format("Autorzy")
    print(ascii_banner)
    print("╔══════════════════╗")
    autor=" Mateusz Bereta"
    autor=autor.ljust(18)
    print("║"+autor+"║")
    print("╠══════════════════╣")
    autor2=" Oskar Jany"
    autor2=autor2.ljust(18)
    print("║"+autor2+"║")
    print("╚══════════════════╝")
    input()
    os.system('CLS') #czyszczenie konsoli
    ascii_banner = pyfiglet.figlet_format("Pytania?")
    print(ascii_banner)
    input()
    os.system('CLS') #czyszczenie konsoli
    ascii_banner = pyfiglet.figlet_format("Dziekujemy : )")
    print(ascii_banner)
    input()
    naglowek()
    menuP()
naglowek()
menuP()
