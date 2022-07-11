from sympy import symbols, Eq, solve
from itertools import product
import math

# ---------------------------------------------for vector in 2D---------------------------------------------
enc_mess1 = [1220.6, 2056.2] # This is encrpted message

goodBasis = [[3,0],[0,2]] # private key given in question, 
                          # and as it is a multiple of unit vector we can take this as good basis.

badBasis = [[3,12],[9,8]] # public key given in question
                          # and as it not a multiple of unit vector we can take this as bad basis.

def decode(m):
    # Here first First, we will calculate the closest lattice point for the given non-lattice point,
    # which represents the encrypted message, using the private key.
    x, y = symbols('x y')
    eq1 = Eq((goodBasis[0][0]*x + goodBasis[1][0]*y), m[0]) 
    eq2 = Eq((goodBasis[0][1]*x + goodBasis[1][1]*y), m[1]) 
    sol = solve((eq1, eq2),(x, y)) # this gives us non-lattice point, thus we need to round off
                                   # Four possibilities for rounding [up,up] [down,up] [up,down] [down,down]
    print(sol)

    # After rounding the results of a and b to the nearest integers,
    # we can now calculate the actual closest lattice point to the non lattice point given.
    possiblePoints = []
    cond = product(["up","down"], repeat=2)
    
    for i in cond:
        flag = 0
        for j in i:
            if (flag == 0):
                thing = sol[x]
                if(j == "up"):
                    possiblePoints.append(math.ceil(thing))
                else:
                    possiblePoints.append(math.floor(thing))
            else:
                thing = sol[y]
                if(j == "up"):
                    possiblePoints.append(math.ceil(thing))
                else:
                    possiblePoints.append(math.floor(thing))
            flag = 1
    
    # Just making pairs of points into a list.
    finalPosiblePoints = []
    for i in range(0,len(possiblePoints),2):
        finalPosiblePoints.append([possiblePoints[i],possiblePoints[i+1]])
    print(finalPosiblePoints)

    # Here calculating possible vectors using the possible points
    possibleVectors = []
    for i in finalPosiblePoints:
       possibleVectors.append([goodBasis[0][0]*i[0] + goodBasis[1][0]*i[1] , goodBasis[0][1]*i[0] + goodBasis[1][1]*i[1]])
    print(possibleVectors)

    # Here calculating the points or the possible answers using possible vectors and the public key
    possibleAnswers = []
    for i in possibleVectors:
        x, y = symbols('x y')
        eq1 = Eq((badBasis[0][0]*x + badBasis[1][0]*y), i[0]) 
        eq2 = Eq((badBasis[0][1]*x + badBasis[1][1]*y), i[1]) 
        sol = solve((eq1, eq2),(x, y))
        print(sol)
        possibleAnswers.append(sol)

    # You will see that the output you get contains decimal value of ascii
    # Try to convert them to char by doing
    for i in possibleAnswers:
        try:
            print(f"{chr(i[x])}{chr(i[y])}")
        except:
            pass

decode(enc_mess1)

# # ---------------------------------------------for vector in 3D (reI  tIs)---------------------------------------------

# # enc_mess2 = [1862.7, 3162.2, 1169.1]

# # # value for message2
# # goodBasis = [[0,0,1],[0,3,0],[1,0,0]] # private key
# # badBasis = [[6,14,4],[3,9,2],[12,9,7]] # public key

# enc_mess3 = [2294.7, 2882.2, 1415.1]

# # values for message3
# goodBasis = [[0,0,1],[0,2,0],[3,0,0]] # private key
# badBasis = [[6,9,4],[3,11,2],[12,9,7]] # public key

# # yaha peh hori decoding
# def decode(m):
#     x, y, z = symbols('x y z')
#     eq1 = Eq((goodBasis[0][0]*x + goodBasis[1][0]*y + goodBasis[2][0]*z), m[0]) 
#     eq2 = Eq((goodBasis[0][1]*x + goodBasis[1][1]*y + goodBasis[2][1]*z), m[1])
#     eq3 = Eq((goodBasis[0][2]*x + goodBasis[1][2]*y + goodBasis[2][2]*z), m[2])
#     sol = solve((eq1, eq2, eq3),(x, y, z))
#     print(sol)

#     possiblePoints = []
#     cond = product(["up","down"], repeat=3)
    
#     for i in cond:
#         flag = 0
#         temp = []
#         for j in i:
#             if (flag == 0):
#                 thing = sol[x]
#                 if(j == "up"):
#                     temp.append(math.ceil(thing))
#                 else:
#                     temp.append(math.floor(thing))
#             elif (flag == 1):
#                 thing = sol[y]
#                 if(j == "up"):
#                     temp.append(math.ceil(thing))
#                 else:
#                     temp.append(math.floor(thing))
#             else:
#                 thing = sol[z]
#                 if(j == "up"):
#                     temp.append(math.ceil(thing))
#                 else:
#                     temp.append(math.floor(thing))
#             flag += 1
#         possiblePoints.append(temp)
#     print("Possible points are:- ")
#     print(possiblePoints)

#     possibleVectors = []
#     for i in possiblePoints:
#        possibleVectors.append([goodBasis[0][0]*i[0] + goodBasis[1][0]*i[1] + goodBasis[2][0]*i[2], goodBasis[0][1]*i[0] + goodBasis[1][1]*i[1] + goodBasis[2][1]*i[2], goodBasis[0][2]*i[0] + goodBasis[1][2]*i[1] + goodBasis[2][2]*i[2]])
#     print(possibleVectors)

#     possibleAnswers = []
#     for i in possibleVectors:
#         x, y, z = symbols('x y z')
#         eq1 = Eq((badBasis[0][0]*x + badBasis[1][0]*y + badBasis[2][0]*z), i[0]) 
#         eq2 = Eq((badBasis[0][1]*x + badBasis[1][1]*y + badBasis[2][1]*z), i[1])
#         eq3 = Eq((badBasis[0][2]*x + badBasis[1][2]*y + badBasis[2][2]*z), i[2]) 
#         sol = solve((eq1, eq2, eq3),(x, y, z))
#         possibleAnswers.append(sol)
#         print(sol)

#     for i in possibleAnswers:
#         try:
#             print(f"{chr(i[x])}{chr(i[y])}{chr(i[z])}")
#         except:
#             pass
    
# # decode(enc_mess2)
# decode(enc_mess3)


