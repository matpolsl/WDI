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
    print("Wyjście [0]")
    menuS()


def menuS():
    menu = int(input("Wybierz opcję z menu: "))
    if(menu==1): gra()
    elif(menu==2): autogra() #gra pc
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
        sleep(2)
        liczba = random.randint(m,w)
        print("Wprowadzam liczbę: "+str(int(liczba)))
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
naglowek()
menuP()
