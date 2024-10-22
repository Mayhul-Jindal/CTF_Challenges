# ԍcᴉϝϝɑɼ

**Author**: Mayhul

Mike bought a quantumn computer which could easily break many of the public-key cryptosystems currently in use. Recently one of his friends send him an encrypted [message](https://www.math3d.org/ohWAJ7ysD) and public and the private key as following:-

For text_1
```python

public
[3,12] # [x1,y1]
[9,8]  # [x2,y2]

private
[3,0]  # [x1,y1]
[0,2]  # [x2,y2]

```

For text_2
```python

public key
[6,14,4]  # [x1,y1,z1]
[3,9,2]   # [x2,y2,z2]
[12,9,7]  # [x3,y3,z3]

private key
[0,0,1]   # [x1,y1,z1]
[0,3,0]   # [x2,y2,z2]
[1,0,0]   # [x3,y3,z3]

``` 
For text_3
```python

public key
[6,9,4]   # [x1,y1,z1]
[3,11,2]  # [x2,y2,z2]
[12,9,7]  # [x3,y3,z3]

private key
[0,0,1]   # [x1,y1,z1]
[0,2,0]   # [x2,y2,z2]
[3,0,0]   # [x3,y3,z3]


```

He challenged mike to decrypt it, by also sending him how he encrypted `abcdefgh` :)

![](./static/1.png)

At first Mike was confident that it wouldn't be any trouble but soon realized he celebrated bit too early.

Given to user:
- All things are mentioned in the question itself

**Solution**:

- For reading about lattice-based cryptography you can read this medium [article](https://medium.com/nerd-for-tech/the-idea-behind-lattice-based-cryptography-5e623fa2532b)

- Short summary is this 
  - A `basis` is a collection of vectors that can be used to reproduce any point in a given space.
  > read about `good basis` and `bad basis` from article

  - In simple terms, a `lattice` can be considered as any regularly arranged grid of points. This grid is not finite in    any way. Rather, a lattice describes a kind of pattern which continues into the infinite.
  A lattice is described by a basis of vectors.

- Given us this link which represents some vectors

![](./static/2.png)

- Understanding the encryption

![](static/1.png)

Here encryption is done by using a `bad basis` and then making a `closest vector` to the encrypted vector by adding a vector.
Thus this cryptography uses the `closest vector problem(CVP)` i.e Given a `bad basis` for some lattice and a randomly chosen point P, the CVP asks to find the closest lattice point to challenge P

- Thus for solving we will use the `good basis` to first get values of constants that are multiplied to make the encrypted text.
    - We can do that by solving linear equation in 2 variables
    
    - You will get some some real value with decimal value, but as  lattices consist only of points with integer values you have to round that up. There are 4 possibilities [up,up] [down,up] [up,down] [down,down]
    
    - Now multiple the rounded values with `good basis` in the similar fashion as above and get the possible closest vectors.
    
    - From these possible closest vectors try to get the values of `abcdefgh` i.e solving the challenge. You have to do this by solving linear equation in 2 variables taking `bad basis` this time. 
    
    - You will notice that you are getting decimal values of ascii, convert them `decimal --> ascii` to get the text ;) 

- Here is the code to dcrypt it along with explaination in the comments itself:)

For 2D vector
```python
from sympy import symbols, Eq, solve
from itertools import product
import math

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
```

For 3D vector the logic is same as in 2D, its just that now we have the third co-ordinate in everything. 
```python
from sympy import symbols, Eq, solve
from itertools import product
import math

enc_mess2 = [1862.7, 3162.2, 1169.1]

# value for message2
goodBasis = [[0,0,1],[0,3,0],[1,0,0]] # private key
badBasis = [[6,14,4],[3,9,2],[12,9,7]] # public key

# enc_mess3 = [2294.7, 2882.2, 1415.1]

# # values for message3
# goodBasis = [[0,0,1],[0,2,0],[3,0,0]] # private key
# badBasis = [[6,9,4],[3,11,2],[12,9,7]] # public key

def decode(m):
    x, y, z = symbols('x y z')
    eq1 = Eq((goodBasis[0][0]*x + goodBasis[1][0]*y + goodBasis[2][0]*z), m[0]) 
    eq2 = Eq((goodBasis[0][1]*x + goodBasis[1][1]*y + goodBasis[2][1]*z), m[1])
    eq3 = Eq((goodBasis[0][2]*x + goodBasis[1][2]*y + goodBasis[2][2]*z), m[2])
    sol = solve((eq1, eq2, eq3),(x, y, z))
    print(sol)

    possiblePoints = []
    cond = product(["up","down"], repeat=3)
    
    for i in cond:
        flag = 0
        temp = []
        for j in i:
            if (flag == 0):
                thing = sol[x]
                if(j == "up"):
                    temp.append(math.ceil(thing))
                else:
                    temp.append(math.floor(thing))
            elif (flag == 1):
                thing = sol[y]
                if(j == "up"):
                    temp.append(math.ceil(thing))
                else:
                    temp.append(math.floor(thing))
            else:
                thing = sol[z]
                if(j == "up"):
                    temp.append(math.ceil(thing))
                else:
                    temp.append(math.floor(thing))
            flag += 1
        possiblePoints.append(temp)
    print("Possible points are:- ")
    print(possiblePoints)

    possibleVectors = []
    for i in possiblePoints:
       possibleVectors.append([goodBasis[0][0]*i[0] + goodBasis[1][0]*i[1] + goodBasis[2][0]*i[2], goodBasis[0][1]*i[0] + goodBasis[1][1]*i[1] + goodBasis[2][1]*i[2], goodBasis[0][2]*i[0] + goodBasis[1][2]*i[1] + goodBasis[2][2]*i[2]])
    print(possibleVectors)

    possibleAnswers = []
    for i in possibleVectors:
        x, y, z = symbols('x y z')
        eq1 = Eq((badBasis[0][0]*x + badBasis[1][0]*y + badBasis[2][0]*z), i[0]) 
        eq2 = Eq((badBasis[0][1]*x + badBasis[1][1]*y + badBasis[2][1]*z), i[1])
        eq3 = Eq((badBasis[0][2]*x + badBasis[1][2]*y + badBasis[2][2]*z), i[2]) 
        sol = solve((eq1, eq2, eq3),(x, y, z))
        possibleAnswers.append(sol)
        print(sol)

    for i in possibleAnswers:
        try:
            print(f"{chr(i[x])}{chr(i[y])}{chr(i[z])}")
        except:
            pass
    
decode(enc_mess2)
# decode(enc_mess3)

```

**Flag**: `dsc{hereItIs}`