from faker import Faker
import secrets
import random
def writetofile():
    f = open("friends.txt", "a")

    for i in range(20):
        f.write("Insert into friend VALUES (%d,%d);\r" % ( i+1, random.randint(1,21)))
    f.close()

writetofile()
