︠af8377d2-8400-41b2-9fae-6a8a59107cc2i︠
import warnings
warnings.filterwarnings("ignore", category=DeprecationWarning)
%html
<p style="text-align: left;"><span style="font-size: medium;"><br>Function Reference Sheet:</span></p>
︡c16c5ac3-2f98-4048-95ae-a17083d30911︡{"html":"<p style=\"text-align: left;\"><span style=\"font-size: medium;\"><br>Function Reference Sheet:</span></p>"}︡{"done":true}
︠d6feb77d-9b83-4b62-aaec-510490f0cd48︠
#functions reference sheet
x, y, z, a, c, d, e = var("x y z a c d e")
xVect = vector([x, y, z, a, c, d, e])

# Takes in a transposed matrix (matrix[[col][col]].transpose()) and a vector b
# Throws an exception if b's elements is not equal to A's rows
# returns a list of equations
def toEquations (A, b):
    if (len(A.rows()) != len(b)):
        raise Exception("A and b don't have the correct number of elements")
    print(A, "x = ", b)
    print()

    numOfrows = len(A.rows());
    numOfcols = len(A.columns());
    equations = []
    for i in range(numOfrows):
        equation = ""
        for j in range(numOfcols):
            equation = equation + " + " + str(A[i][j] * xVect[j])

        equation = equation[2:] + " == " + str(b[i])
        equations.append(equation)
    return equations

# Takes in a transposed matrix m and a vector and prints out whether the matrix is in span or not
# if the matrix is in span, the function will print out the linear combination of m's vectors that results in the vector
def checkVectorinSpan (m, vector):
    try:
        x = m.solve_right(vector);
        print(vector, ": vector in the span!")
        printing = str(x[0]) + " * " + str(m.transpose()[0]) + " + "
        for i in range(1, len(m.columns())):
            printing = printing + str(x[i]) + " * " + str(m.transpose()[i]) + "  "

        print(printing, "= ", vector)
        print()

    except:
        print(vector, ": vector is not in span!")

#Takes in a transposed matrix and returns the column and row span as a dictionary {colspan: ..., rowspan: ...}
def colAndRowSpan (m) :
    vectors = m.echelon_form().rank()
    result = {}
    colspan = []
    rowspan = []
    for i in range(vectors):
        colspan.append(m.transpose()[i])
        rowspan.append(m[i])

    result["colspan"] = colspan
    result["rowspan"] = rowspan
    return result

#Takes in a transposed matrix and prints whether the set of vectors spans the space it lives in
# returns true if the set spans the space and false otherwise
def spanRn (m) :
    cols = len(m.columns());
    rows = len(m.rows());
    print("the set lives in R", rows)

    if(rank(m) == rows) :
        print("The set spans R", rows)
        return True
    else:
        print("The set doesn't span R", rows)
        return False

#Takes in a transposed matrix and returns True if the set is linearly independent and false if linearly dependent
def isIndependent(m) :
    solved = m.echelon_form();
    print(solved,"\n")
    cols = len(m.columns())

    for i in range(cols):
        if solved[i][i] == 0:
            print(str(m.transpose()[i]), " is in the span of another vector in the set! \nThe set is Linearly Dependent\n")
            return False;
    print("The set is Linearly Independent!\n")
    return True;



︡8484fb1f-b20c-4c28-94c9-e7caea06954e︡{"done":true}
︠2bb905b9-acfd-4f08-b9fe-173f82e225a8i︠
%html
<h1 style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: xx-large;">Chapter 2: Euclidian Space</span></span></h1>
<p style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: x-large;">by Snigdha Mahankali</span></span></p>
<p style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: large;">snigsm@uw.edu</span></span></p>
<p style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: medium;">This Sage Worksheet is a part of a linear algebra tutorial created by Sara Billey's 2024 WXML group. It follows Chapter 8 of Holt's Linear Algebra with Applications. This section introduces on how to work with vectors, find their spans and determine linear independence.</span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><strong><span style="font-size: xx-large;"><span style="font-size: x-large;">Vectors</span></span></strong></p>
︡b93a185e-2296-40ef-a1f9-4d3a4be88d7e︡{"done":true,"html":"<h1 style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: xx-large;\">Chapter 2: Euclidian Space</span></span></h1>\n<p style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: x-large;\">by Snigdha Mahankali</span></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: large;\">snigsm@uw.edu</span></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">This Sage Worksheet is a part of a linear algebra tutorial created by Sara Billey's 2024 WXML group. It follows Chapter 8 of Holt's Linear Algebra with Applications. This section introduces on how to work with vectors, find their spans and determine linear independence.</span></p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\"><strong><span style=\"font-size: xx-large;\"><span style=\"font-size: x-large;\">Vectors</span></span></strong></p>"}
︠22d68f4a-9244-44a0-aefc-4893e774bab0i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">The way to create a vector is to use the vector keyword followed by the vector you wish to make. Sage will use context clues to figure out whether a vector is a row or column vector,<br> but all vectors will be rendered horizontally. For the purposes of this tutorial, all matrices will be inputed with column vectors and then transposed to look correct!<br> (Note: QQ and other specifiers denote which domain the vector will live in (ZZ: Integers, QQ: Rational, RR: Reals, CC: Complex, SR: Symbolic Ring aka variable expressions)) </span></span></p>

︡b3b0b9ff-bb6e-49d0-b413-03b999401767︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">The way to create a vector is to use the vector keyword followed by the vector you wish to make. Sage will use context clues to figure out whether a vector is a row or column vector,<br> but all vectors will be rendered horizontally. For the purposes of this tutorial, all matrices will be inputed with column vectors and then transposed to look correct!<br> (Note: QQ and other specifiers denote which domain the vector will live in (ZZ: Integers, QQ: Rational, RR: Reals, CC: Complex, SR: Symbolic Ring aka variable expressions)) </span></span></p>"}
︠25e12b21-6512-4b13-af7c-90f690aef474︠
rowVector = vector([1,2,3]); rowVector
︡76006cb0-2adc-42ac-b9e6-55757651a1fd︡{"stdout":"(1, 2, 3)\n"}︡{"done":true}
︠2de2f774-2005-49ae-aa5a-4c9f3b678ad9︠
colVector = vector(QQ,[1,2,3]); colVector
︡6cb66efe-3705-41e4-9bfc-2dcd4630b28e︡{"stdout":"(1, 2, 3)\n"}︡{"done":true}
︠68caa84f-7d44-4416-8355-097ed1dbed56i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Vector addition works simply with the + operator and scalar multiplication works simply with the * operator. Here, any vector can be refered to by its variable name and can be used in arithmetic operations just as you would with normal intgers. These arithmetic operations are fomally called Linear Combinations where you combine vectors to create new ones.</span></span></p>
︡7258cc73-1b8c-49aa-b83e-ab87603c6456︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Vector addition works simply with the + operator and scalar multiplication works simply with the * operator. Here, any vector can be refered to by its variable name and can be used in arithmetic operations just as you would with normal intgers. These arithmetic operations are fomally called Linear Combinations where you combine vectors to create new ones.</span></span></p>"}
︠374df622-9f36-4c67-880b-a7b655cf38cb︠
v = vector([1,0,0]);
w = vector([0,1,0]);
print(v+w)
︡0a93d4e3-2d40-4898-b9ef-051acdbe4102︡{"stdout":"(1, 1, 0)\n"}︡{"done":true}
︠401546a0-e22f-4acc-b9b5-c096f4e81360︠
v = vector([1,0,0]);
print(2*v)
︡ef604d22-b606-4b69-a99a-ac906c4f2ee0︡{"stdout":"(2, 0, 0)\n"}︡{"done":true}
︠f13c7895-3925-4e43-ab69-f38761de3caa︠
v = vector([1,0,0]);
w = vector([0,1,0]);
x = vector([1, -4, 3]);
print(2*v, " + ", 3*w, " - ", x)
print(2*v + 3*w - x)
︡8931ee15-fb97-488c-ad29-c9377caf7aaf︡{"stdout":"(2, 0, 0)  +  (0, 3, 0)  -  (1, -4, 3)\n"}︡{"stdout":"(1, 7, -3)\n"}︡{"done":true}
︠86837536-18ef-48f4-9697-62cfacb2fd64i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Vectors can also be used to represent solutions to systems of equations (i.e Vector Form or General Solution Form).<br> Based on Textbook 2.1 Example 3 (open the next dropdown for the reference)</span></span></p>
︡a5c4fc06-ae85-4ad7-a7ed-b1ff5e462731︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Vectors can also be used to represent solutions to systems of equations (i.e Vector Form or General Solution Form).<br> Based on Textbook 2.1 Example 3 (open the next dropdown for the reference)</span></span></p>"}
︠a9f3305e-0264-47aa-b549-c003373f972fio︠
%html
<img src="images/2.1 ex3.png">
︡ef64f265-1efb-46c1-9021-e486704b6ff8︡{"done":true,"html":"<img src=\"images/2.1 ex3.png\">"}
︠3ed69f42-1df9-4a29-88e6-184ceb9e6210o︠
def toEquations (A, b):
    if (len(A.rows()) != len(b)):
        raise Exception("A and b don't have the correct number of elements")
    print(A, "x = ", b)
    print()

    numOfrows = len(A.rows());
    numOfcols = len(A.columns());
    equations = []
    for i in range(numOfrows):
        equation = ""
        for j in range(numOfcols):
            equation = equation + " + " + str(A[i][j] * xVect[j])

        equation = equation[2:] + " == " + str(b[i])
        equations.append(equation)
    return equations
︡22b7b7ac-f4f9-4073-a883-ab6f677ba0cc︡{"done":true}
︠0cbb02d6-846e-4f1b-9e2c-bd0a74197477︠
x, y, z, a, c, d, e = var("x y z a c d e")

#can add up to 7 COLUMN vectors to A before you need to add more variables to xVect!
#if you add/remove elements to each of A's column vectors, make sure the vector b has the same number of elements

#Uncomment each of the following A, b, s, and solutionVector (they correspond in order) or make your own!
A = matrix([[2, 1, -1], [-3, -2, 3], [10, 3, 1]]).transpose();
# A = matrix([[1, 1], [0,1]]).transpose();

b = vector([-2, -2, 4])
# b = vector([2, 1])

#toEquations takes in a transposed matrix and a vectors and returns a list of corresponding linear equations
equations = toEquations(A, b); print("Generated Equations: ", equations, "\n")
print("Make sure you pass in: ", len(equations), " equations and ", len(A.columns()), " variables")

#solve(eval[equation], eval[equation]..., var1, var2, var3, solution_dict=True) passes in all the equations and variables needed
# and returns a dictionary in the form s = [{x: ..., y:..., z: ..., etc.}]
# Make sure to change parameters of solve as number of equations and parameters change!

s = solve([eval(equations[0]), eval(equations[1]), eval(equations[2])], x, y, z, solution_dict=True);
# s = solve([eval(equations[0]), eval(equations[1])], xVect[0], xVect[1], solution_dict=True);

# NOTE: solutions have not been seperated out into multiple vectors!
solutionVector = vector([s[0].get(x), s[0].get(y), s[0].get(z)])
# solutionVector = vector([s[0].get(xVect[0]), s[0].get(xVect[1])])

print("Solution vector (x, y, z, ...): ",solutionVector)

︡0bb9b433-040d-451d-aacd-ac68735eccf1︡{"stdout":"[ 2 -3 10]\n[ 1 -2  3]\n[-1  3  1] x =  (-2, -2, 4)\n\nGenerated Equations: "}︡{"stdout":" [' 2*x + -3*y + 10*z == -2', ' x + -2*y + 3*z == -2', ' -x + 3*y + z == 4'] \n\n"}︡{"stdout":"Make sure you pass in:  3  equations and  3  variables\n"}︡{"stdout":"Solution vector (x, y, z, ...):  (-11*r1 + 2, -4*r1 + 2, r1)\n"}︡{"done":true}
︠308202fa-b4f5-4784-8abc-c1d39887b216i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Vectors look like arrows, always starting from (0,0) and extending outward. </span></span></p>
︡d332476f-f2ec-4c95-96bf-3144b77568b5︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Vectors look like arrows, always starting from (0,0) and extending outward. </span></span></p>"}
︠5a3a7eb1-f45a-4b40-af85-fa0725bceeaa︠
p = arrow((0,0), (-2, 5))
p.show(xmin=-5, xmax=5, ymin=-5, ymax=5, aspect_ratio=1)
︡91994213-35c5-4f38-8d5e-374a7fddb774︡{"file":{"filename":"/tmp/tmpx2210b2m/tmp_ob1u4byz.svg","show":true,"text":null,"uuid":"b5addf9b-37e0-436e-90da-2722057e6bc6"},"once":false}︡{"done":true}
︠e8687844-4451-4080-abb5-eb8c7bb94aadi︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">You can determine u + v using the tip to tail method. </span></span></p>
︡2f49d5a5-e117-4b89-b025-4df3f4d943aa︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">You can determine u + v using the tip to tail method. </span></span></p>"}
︠d99c7bd9-8e81-4b2c-8e51-07e757720168︠
p = arrow((0,0), (1,7), color="red", legend_label="u") + arrow((0,0), (3,1), legend_label="v") + arrow((1,7), (4, 8)) + arrow((0,0), (4, 8), color="green", legend_label="u+v")
p.show(xmin=-1, xmax=7, ymin=-1, ymax=10, aspect_ratio=1)
︡d9d99383-73f3-4da4-98e9-1e550953f8e1︡{"file":{"filename":"/tmp/tmpx2210b2m/tmp_i9_wgqtg.svg","show":true,"text":null,"uuid":"1c7fa65c-dde8-46f6-a30a-4dec48755eee"},"once":false}︡{"done":true}
︠bbf10def-649b-43fa-8794-5e45a94a17d7i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">You can also determine u + v using the parallelogram method. </span></span></p>
︡540c9982-bf34-476b-a51c-2fa761ce15bf︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">You can also determine u + v using the parallelogram method. </span></span></p>"}
︠51d09420-c2e9-4995-9bd3-6de23d216e2d︠
q = arrow((0,0), (3,3), color="red", legend_label="u") + arrow((0,0), (-2,-5), legend_label="v") + arrow((0,0), (1,-2), color="green", legend_label="u+v") + line([(3, 3), (1, -2)]) + line([(-2, -5), (1, -2)])
q.show()
︡96b13651-76e5-4461-995a-ae1acbd28ea0︡{"file":{"filename":"/tmp/tmpzjy27z11/tmp_b2nxw2uk.svg","show":true,"text":null,"uuid":"53e1d980-0466-44c8-b40b-bdf9d8bdcb92"},"once":false}︡{"done":true}
︠9312e510-8873-4a60-8081-f7622aa169f0i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Scaling a vector moves it along a fixed line. </span></span></p>
︡2126c4b5-9d8b-45c6-af0b-a95f626e01f4︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Scaling a vector moves it along a fixed line. </span></span></p>"}
︠e43aeda3-ceb9-4bc6-b647-dcde31b5691d︠
sum(arrow2d((0,0), (2*x, 5*x), hue=x/(2*pi))
    for x in [-2..2, step=0.4])

︡7feb30e2-9d2f-4920-a397-73dbc6b9e55c︡{"file":{"filename":"/tmp/tmpzjy27z11/tmp_si5tknvw.svg","show":true,"text":null,"uuid":"d151bd8a-d6c8-49b9-8e41-3ac9b5978a6c"},"once":false}︡{"done":true}
︠227ac013-a530-41c1-9ed0-94d0fe61c5fci︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">The vector below is an example of putting a 2 dimentional vector in a 3 dimesional space</span></span></p>
︡5d608f6d-ad66-4377-a3ad-cae2509a3b75︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">The vector below is an example of putting a 2 dimentional vector in a 3 dimesional space</span></span></p>"}
︠9627082a-f2f2-4143-ab21-a8054f532fde︠
p=arrow((0,0),(1,1))[0].plot3d()
p.show(aspect_ratio=[5,5,5])
︡28c3bf19-3891-4ca3-b21a-2a8cc2d8d692︡{"file":{"filename":"29a01a8d-8815-412e-9fd5-658985c96406.sage3d","uuid":"29a01a8d-8815-412e-9fd5-658985c96406"}}︡{"done":true}
︠6c0e4468-1493-417f-9e69-755ea146739f︠
arrow((0,0,0), (1,1,-3))
︡d905239a-11fa-4f3f-b61b-61a349a0d887︡{"file":{"filename":"4912a266-c617-48fa-83dd-7eb4c83acd0b.sage3d","uuid":"4912a266-c617-48fa-83dd-7eb4c83acd0b"}}︡{"done":true}
︠6c9e6531-c30c-4313-a71e-2a742e8c0a49i︠
%html
<p>&nbsp;</p>
<p style="text-align: center;"><strong><span style="font-size: xx-large;"><span style="font-size: x-large;">Span</span></span></strong></p>
<p style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: medium;">Next, let's explore how to use these vectors to describe the space they live. </span></span></p>
︡8bc88b00-2eae-489b-9b73-4873da5f5fd8︡{"done":true,"html":"<p>&nbsp;</p>\n<p style=\"text-align: center;\"><strong><span style=\"font-size: xx-large;\"><span style=\"font-size: x-large;\">Span</span></span></strong></p>\n<p style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Next, let's explore how to use these vectors to describe the space they live. </span></span></p>"}
︠700436ea-845f-4c4d-a00c-d9bc02c73856i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Span can be defined by all the linear combinations of vectors, typically given as a series of vectors {[1, 2, 3], [4, 5, 6]} or as a dimention (R2)</span></span></p>
︡24b5643a-bbb6-419a-b521-26c0d2c6755b︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Span can be defined by all the linear combinations of vectors, typically given as a series of vectors {[1, 2, 3], [4, 5, 6]} or as a dimention (R2)</span></span></p>"}
︠a93c4739-a477-4c52-a04b-8c6c065a01fd︠
#declare variables
x, y, a, b = var("x y a b")

v = vector([0, 1]);
w = vector([2, 1]);
s = vector([a, b]);

#Span is all of the vectors (a, b) the two vectors can reach (in this case, they can reach any 2 dimentional vector)
print("x *", v, " + y *", w, " = ", s)


︡abf421cb-201b-4737-8382-43da1a3af1dd︡{"stdout":"x * (0, 1)  + y * (2, 1)  =  (a, b)\n"}︡{"done":true}
︠6ae94daf-3487-4c4c-b1ab-cc8faea7fd1fi︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">By solving an augmented matrix, we can test whether a matrix is in the span of others<br> Based on Textbook 2.2 Example 2 (open the next drop down for the reference) <br> (Note that the matrix used has been transposed for ease of computation)</span></span></p>
︡fcc9c8d1-8aea-4387-97b9-e377d0408d22︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">By solving an augmented matrix, we can test whether a matrix is in the span of others<br> Based on Textbook 2.2 Example 2 (open the next drop down for the reference) <br> (Note that the matrix used has been transposed for ease of computation)</span></span></p>"}
︠a1090ddb-acec-40ad-85ca-8ddbe6079ae8io︠
%html
<img src="images/2.2 ex2.jpeg">
︡2cd2d741-eab2-47e3-a8c5-57013d192f4c︡{"done":true,"html":"<img src=\"images/2.2 ex2.jpeg\">"}
︠1b143531-25df-4d59-a4eb-bee4c2d0bb39︠
def checkVectorinSpan (m, vector):
    try:
        x = m.solve_right(vector);
        print(vector, ": vector in the span!")
        printing = str(x[0]) + " * " + str(m.transpose()[0]) + " + "
        for i in range(1, len(m.columns())):
            printing = printing + str(x[i]) + " * " + str(m.transpose()[i]) + "  "

        print(printing, "= ", vector)
        print()

    except:
        print(vector, ": vector is not in span!")
︡4f91bc43-a491-412c-a676-994215c1e082︡{"done":true}
︠b598239c-bca3-424b-b639-99fbc53f73b7︠
m = matrix([[2, 1, 1],[1, 2, 3]]);
# m = matrix([[2, 1, 0, 0],[1, 0, 1, 0], [0, 0, 1, 3]]);
mTranspose = m.transpose(); mTranspose
print()

checkSpanV = vector([8, 2, 1])
# checkSpanV = vector([8, 0, 2, 1])

checkSpanW = vector([-1, 4, 7])
# checkSpanW = vector([3, 1, 2, 3])

#sage will throw an exception if the augmented matrix doesn't have a unique solution


checkVectorinSpan(mTranspose, checkSpanV)
checkVectorinSpan(mTranspose, checkSpanW)


︡fa8ba96a-96af-444e-b646-84abc93e82f6︡{"stdout":"[2 1]\n[1 2]\n[1 3]\n"}︡{"stdout":"\n"}︡{"stdout":"(8, 2, 1)"}︡{"stdout":" : vector is not in span!\n"}︡{"stdout":"(-1, 4, 7) : vector in the span!\n-2 * (2, 1, 1) + 3 * (1, 2, 3)   =  (-1, 4, 7)\n\n"}
︠a25c68cc-8112-4e28-af02-a2fa03ddf1a2i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Let's explore what span looks like visually. Two vectors that have different spans in R2 will span the entire space. This pattern continues for n independent vectors in Rn </span></span></p>
︡9aa57931-50f9-45cd-a43b-0274fea7e3e7︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Let's explore what span looks like visually. Two vectors that have different spans in R2 will span the entire space. This pattern continues for n independent vectors in Rn </span></span></p>"}
︠7cbe1a3e-b688-4b62-b682-0655f31b9d12i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">The span of one vector is a line. <br> Any dependent (vectors in the span of others) vectors in R2 will also form a line like the one below. </span></span></p>
︡6028db29-464e-4234-8571-431e087e1760︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">The span of one vector is a line. <br> Any dependent (vectors in the span of others) vectors in R2 will also form a line like the one below. </span></span></p>"}
︠200a634d-1ab2-4bb6-8ac8-c95bdb7302a2︠
sum(arrow2d((0,0), (4*x, 5*x), hue=x/(2*pi))
    for x in [-2..2, step=0.4])
︡d8136e89-2d79-4112-a41b-e114d726726e︡{"file":{"filename":"/tmp/tmpte6fkzm_/tmp__h5cf2f8.svg","show":true,"text":null,"uuid":"e9f9ac1f-6a01-4761-99a4-ad8c0d811a3c"},"once":false}︡{"done":true}
︠3bbaa643-ab3b-48b2-a405-371f0d4a52d1i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Span of two vectors in R3 forms a plane like the one below.<br>Note: This plane extends to infinity, even if it is shown as aa bounded shape onscreen. </span></span></p>
︡dd3e0b7e-c534-49ce-b307-6acaa9034738︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Span of two vectors in R3 forms a plane like the one below.<br>Note: This plane extends to infinity, even if it is shown as aa bounded shape onscreen. </span></span></p>"}
︠318b87fd-c680-4c52-a57a-35e40de1038c︠
s,t = var('s,t')
v1 = vector([1,1,1]);
v2 = vector([1,2,3]);

#forms a line since the two vectors are scalar multiples of each other!
# v1 = vector([1,1,1]);
# v2 = vector([2,2,2]);

graph = parametric_plot3d(s*v1 + t*v2, (s,-2,2), (t,-2,2), color="yellow") + arrow((0,0,0), (v1[0],v1[1],v1[2]), color="red") + arrow((0,0,0), (v2[0],v2[1],v2[2]), color="green")
graph.show()
︡4a519726-c222-4ca0-a903-5b014170aa53︡{"file":{"filename":"cd6fa863-5de6-4cce-84fc-3e2eaf568e4b.sage3d","uuid":"cd6fa863-5de6-4cce-84fc-3e2eaf568e4b"}}︡{"done":true}
︠afe0d60f-5390-4a06-a5d0-c61125dce3cei︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Vectors in the span of the others will lie on the plane made by independent vectors. Vectors not in the span will not be bounded by that plane.</span></span></p>
︡ebeab616-8436-4830-a3ab-587db3c27c69︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Vectors in the span of the others will lie on the plane made by independent vectors. Vectors not in the span will not be bounded by that plane.</span></span></p>"}
︠8a1da04f-fc35-42c5-a418-bab44959ff43︠
s,t = var('s,t')
v1 = vector([1,1,1]) #red
v2 = vector([1,2,3]) #green
vInSpan = vector([2, 3, 4]) #dark blue
vNotInSpan = vector([5, 0, 5]) #light blue

#forms a line since the two vectors are scalar multiples of each other!
# v1 = vector([1,1,1]);
# v2 = vector([2,2,2]);

graph = parametric_plot3d(s*v1 + t*v2, (s,-2,2), (t,-2,2), color="yellow") + arrow((0,0,0), (v1[0],v1[1],v1[2]), color="red") + arrow((0,0,0), (v2[0],v2[1],v2[2]), color="green") + arrow((0,0,0), (vInSpan[0],vInSpan[1],vInSpan[2]), color="blue", label="[2, 3, 4]") + arrow((0,0,0), (vNotInSpan[0],vNotInSpan[1],vNotInSpan[2]))
graph.show()
︡a0222808-736e-4749-80d7-b6ae0fb18710︡{"file":{"filename":"ed7361da-135a-4738-ba0e-83bc0203d8ff.sage3d","uuid":"ed7361da-135a-4738-ba0e-83bc0203d8ff"}}︡{"done":true}
︠1cd9d39d-6a9b-4837-ae80-6befd5e2df2ai︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">The following code calculates span from a matrix of vectors. Feel free to experiment! <br>Note: Matrices in Sage are usually made row wise. For the matrix to be comprised of columnn vectors, simply transpose the matrix when you use it.</span></span></p>
︡b7e27d22-76e2-4b20-8349-7ace85c7b875︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">The following code calculates span from a matrix of vectors. Feel free to experiment! <br>Note: Matrices in Sage are usually made row wise. For the matrix to be comprised of columnn vectors, simply transpose the matrix when you use it.</span></span></p>"}
︠f59665e4-a811-4038-9ebb-bf9f6d9d3c26︠
def colAndRowSpan (m) :
    vectors = m.echelon_form().rank()
    result = {}
    colspan = []
    rowspan = []
    for i in range(vectors):
        colspan.append(m.transpose()[i])
        rowspan.append(m[i])

    result["colspan"] = colspan
    result["rowspan"] = rowspan
    return result
︡469f5253-66dc-49d7-9b9c-0f03185f7d23︡{"done":true}
︠6a67485a-4375-40ee-afdf-2be5cd16267e︠
m = matrix([[1,-1,2], [2,-1,2], [-2,5,-10], [3,-4,8]]);
# m = matrix([[1,0], [3,-1], [5,2]]);
# m = matrix([[1,-1,2, 0], [2,3,-1,2], [0,-2,5,-10], [1, 3,-4,8]]);

mTrans = m.transpose()
print(mTrans, "\n")
print(mTrans.echelon_form(), "\n")

r = colAndRowSpan(mTrans); r

︡ff755d84-94e6-4a3b-8a55-79c62da821be︡{"stdout":"[  1   2  -2   3]\n[ -1  -1   5  -4]\n[  2   2 -10   8] \n\n"}︡{"stdout":"[ 1  0 -8  5]\n[ 0  1  3 -1]\n[ 0  0  0  0]"}︡{"stdout":" \n\n"}︡{"stdout":"{'colspan': [(1, -1, 2), (2, -1, 2)], 'rowspan': [(1, 2, -2, 3), (-1, -1, 5, -4)]}\n"}︡{"done":true}
︠43c36384-5654-45d5-a455-41bd9a5b9937i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: large;">TIP: The span of a set of vectors are the vectors corresponding to pivots in the ROWS of the solved matrix. <br> A set of n vectors span Rn if there is something in each ROW of the solved matrix (no 0 rows)!</span></span></p>
︡3232e667-ec8e-4f55-99a1-a9de21ff0e98︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: large;\">TIP: The span of a set of vectors are the vectors corresponding to pivots in the ROWS of the solved matrix. <br> A set of n vectors span Rn if there is something in each ROW of the solved matrix (no 0 rows)!</span></span></p>"}
︠dc795d96-e366-4e7d-8449-89d63215cc8c︠
def spanRn (m) :
    cols = len(m.columns());
    rows = len(m.rows());
    print("the set lives in R", rows)

    if(rank(m) == rows) :
        print("The set spans R", rows)
        return True
    else:
        print("The set doesn't span R", rows)
        return False
︡750cb573-628a-4cc7-933b-c06862f48f58︡{"done":true}
︠6f5bd918-8cc0-43dc-a11c-eb573601dd37︠
m = matrix([[1,7], [2,14], [1, 0]]).transpose();
# m = matrix([[1,7, 5, 9], [9, 0, 2,14]]);
# m = matrix([[1,7,0], [0,3,0], [5,6, 2]]);

print(m,"\n")
print(m.echelon_form(), "\n")

b = spanRn(m); b

︡27318997-9dea-48db-beb8-65e79477ee46︡{"stdout":"[ 1  2  1]\n[ 7 14  0] \n\n"}︡{"stdout":"[1 2 1]\n[0 0 7] \n\n"}︡{"stdout":"the set lives in R 2\nThe set spans R 2\nTrue\n"}︡{"done":true}
︠666ae2ee-870f-47c5-a60c-432a62ffcb16i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Any system of equations can be made into the form  Ax = b where A is some matrix and x and b are vectors. Experiment with the code below to see how that works!</span></span></p>
︡dc04d306-52dc-4010-b913-3b638bdb7303︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Any system of equations can be made into the form  Ax = b where A is some matrix and x and b are vectors. Experiment with the code below to see how that works!</span></span></p>"}
︠47198dbc-9086-4453-b325-88bd1232159f︠
def toEquations (A, b):
    if (len(A.rows()) != len(b)):
        raise Exception("A and b don't have the correct number of elements")
    print(A, "x = ", b)
    print()

    numOfrows = len(A.rows());
    numOfcols = len(A.columns());
    equations = []
    for i in range(numOfrows):
        equation = ""
        for j in range(numOfcols):
            equation = equation + " + " + str(A[i][j] * xVect[j])

        equation = equation[2:] + " == " + str(b[i])
        equations.append(equation)
    return equations
︡f3a12640-5437-4c5c-8565-cd3308bec68b︡{"done":true}
︠ed4df537-c6d6-472f-93b9-725946a2027d︠
x, y, z, a, c, d, e = var("x y z a c d e")

#can add up to 7 vectors to A before you need to add more variables to xVect!
#if you add more elements to each vector, make sure the vector b has the same number of elements
A = matrix([[1, -2, 9, -4], [3,1,1,-2], [-6, 1,2,3], [2,5, 1, -1]]).transpose();

b = vector([6, 16, 0, 1])

e = toEquations(A, b); e

︡f6b8d800-d5ca-4ae0-adeb-110d03446263︡{"stdout":"[ 1  3 -6  2]\n[-2  1  1  5]\n[ 9  1  2  1]\n[-4 -2  3 -1] x =  (6, 16, 0, 1)\n\n[' x + 3*y + -6*z + 2*a == 6', ' -2*x + y + z + 5*a == 16', ' 9*x + y + 2*z + a == 0', ' -4*x + -2*y + 3*z + -a == 1']\n"}︡{"done":true}
︠720abb12-83ec-4572-a8ad-87a5fa453f5di︠
%html
<p>&nbsp;</p>
<p style="text-align: center;"><strong><span style="font-size: xx-large;"><span style="font-size: x-large;">Linear Independence</span></span></strong></p>
<p style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: medium;">Next, let's describe our sets of vectors.</span></span></p>
︡f4b9322f-8ffa-4deb-b224-a914adf19cb2︡{"done":true,"html":"<p>&nbsp;</p>\n<p style=\"text-align: center;\"><strong><span style=\"font-size: xx-large;\"><span style=\"font-size: x-large;\">Linear Independence</span></span></strong></p>\n<p style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Next, let's describe our sets of vectors.</span></span></p>"}
︠f5732a49-dd08-4870-abff-b6b0f5c01733i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">A set of vectors is independent if you are able to solve the augmented matrix and back-substitute towards one single unique solution. But if at least one vector is in the span of any other vectors in the set, the set is linearly dependent and has infinite solutions. Try different vectors below to explore! <br>Note: A set of vectors containing the 0 vector is always linearly dependent since any vector in the set can be scaled by a factor of 0 to get the 0 vector.</span></span></p>
︡abad81eb-0059-45aa-8042-cd375c41f549︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">A set of vectors is independent if you are able to solve the augmented matrix and back-substitute towards one single unique solution. But if at least one vector is in the span of any other vectors in the set, the set is linearly dependent and has infinite solutions. Try different vectors below to explore! <br>Note: A set of vectors containing the 0 vector is always linearly dependent since any vector in the set can be scaled by a factor of 0 to get the 0 vector.</span></span></p>"}
︠283ad396-2519-4b7e-a397-b85dbe1ea7b4︠
def isIndependent(m) :
    solved = m.echelon_form();
    print(solved,"\n")
    cols = len(m.columns())

    for i in range(cols):
        if solved[i][i] == 0:
            print(str(m.transpose()[i]), " is in the span of another vector in the set! \nThe set is Linearly Dependent\n")
            return False;
    print("The set is Linearly Independent!\n")
    return True;
︡24d8a091-5a14-4db3-bef9-8e4946428d33︡{"done":true}
︠9e44ddfb-47d1-470f-89ae-cbe2bb162f62︠
m = matrix([[-1, 4, -2, -3], [3, -13, 7, 7], [1, 1, 1, 1], [2, 2, 2, 2]]).transpose();
print(m)

b =isIndependent(m); b

︡5e796e7d-94ed-4759-b6bf-c3f5fb3d21e4︡{"stdout":"[ -1   3   1   2]\n[  4 -13   1   2]\n[ -2   7   1   2]\n[ -3   7   1   2]\n"}︡{"stdout":"[1 0 0 0]\n[0 1 3 6]\n[0 0 4 8]\n[0 0 0 0] \n\n(2, 2, 2, 2)  is in the span of another vector in the set! \nThe set is Linearly Dependent\n\nFalse\n"}︡{"done":true}
︠72c3b976-fde1-471c-834e-e9b2fd14dfcai︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: large;">TIP: A set of vectors are linearly independent if there is a pivot in each COLUMN down the diagonal of the solved matrix! </span></span></p>
︡26d61037-a705-4fa4-a29d-b219066aaa2d︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: large;\">TIP: A set of vectors are linearly independent if there is a pivot in each COLUMN down the diagonal of the solved matrix! </span></span></p>"}
︠aa2f085f-e71a-4aa9-ab9b-6cb6f26a2e53i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">If a set of vectors is lineraly independent, then Ax = b (written as a series of equations or as an augmented matrix) has at most one unique solution for every b<br>Based on Textbook 2.3 Example 4 (open the next drown down for the reference)<br>Based on that example, since the the solution to Ax = b or Ax = 0 has free variables, the set is not linearly independent!)</span></span></p>
︡277af15e-1207-4c1d-9af1-b74922d35bd6︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">If a set of vectors is lineraly independent, then Ax = b (written as a series of equations or as an augmented matrix) has at most one unique solution for every b<br>Based on Textbook 2.3 Example 4 (open the next drown down for the reference)<br>Based on that example, since the the solution to Ax = b or Ax = 0 has free variables, the set is not linearly independent!)</span></span></p>"}
︠2206215b-58c3-4678-b73f-3121bea5425aio︠
%html
<img src="images/2.3 ex4.png">
︡2bffb13d-9208-41a6-a48d-a18ac122acb1︡{"done":true,"html":"<img src=\"images/2.3 ex4.png\">"}
︠6c54c031-445c-453c-b4e4-b5309652ffd7︠
def toEquations (A, b):
    if (len(A.rows()) != len(b)):
        raise Exception("A and b don't have the correct number of elements")
    print(A, "x = ", b)
    print()

    numOfrows = len(A.rows());
    numOfcols = len(A.columns());
    equations = []
    for i in range(numOfrows):
        equation = ""
        for j in range(numOfcols):
            equation = equation + " + " + str(A[i][j] * xVect[j])

        equation = equation[2:] + " == " + str(b[i])
        equations.append(equation)
    return equations
︡d0439458-55a0-4c71-9222-cb0aab58a0b9︡{"done":true}
︠738f7ec4-5922-40e6-b9e5-842e417424c2︠
x, y, z, a, c, d, e = var("x y z a c d e")
xVect = vector([x, y, z, a, c, d, e])

#can add up to 7 COLUMN vectors to A before you need to add more variables to xVect!
#if you add more elements to each vector, make sure the vector b has the same number of elements
A = matrix([[2, 1, -1], [-6, -3, 3], [-1, -1, -1], [8, 6, 2]]).transpose();
# A = matrix([[1, -2], [3,1], [5,4]]);

b = vector([7, 6, 4])
equations = toEquations(A, b); print(equations)

#Make sure to change parameters as number of equations and parameters change! (or your solution will be incorrect)
solve([eval(equations[0]), eval(equations[1]), eval(equations[2])], xVect[0], xVect[1], xVect[2], xVect[3])
print()
C = matrix([[2, 1, -1], [-6, -3, 3], [-1, -1, -1], [8, 6, 2]]).transpose();
d = vector([0, 0, 0])

equations = toEquations(C, d); print(equations)

#change parameters as number of equationa and parameters change!
solve([eval(equations[0]), eval(equations[1]), eval(equations[2])], xVect[0], xVect[1], xVect[2], xVect[3])
︡670277a5-b337-4e12-8f54-410051748bd9︡{"stdout":"[ 2 -6 -1  8]\n[ 1 -3 -1  6]\n[-1  3 -1  2] x =  (7, 6, 4)\n\n[' 2*x + -6*y + -z + 8*a == 7', ' x + -3*y + -z + 6*a == 6', ' -x + 3*y + -z + 2*a == 4']\n"}︡{"stdout":"[[x == -2*r10 + 3*r11 + 1, y == r11, z == 4*r10 - 5, a == r10]]\n"}︡{"stdout":"\n"}︡{"stdout":"[ 2 -6 -1  8]\n[ 1 -3 -1  6]\n[-1  3 -1  2] x =  (0, 0, 0)\n\n[' 2*x + -6*y + -z + 8*a == 0', ' x + -3*y + -z + 6*a == 0', ' -x + 3*y + -z + 2*a == 0']\n"}︡{"stdout":"[[x == -2*r12 + 3*r13, y == r13, z == 4*r12, a == r12]]\n"}︡{"done":true}
︠f198ea45-58db-4a67-a8ff-0dee0748ad90i︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">Independent vectors are not in the span of another vector (or set of vectors)!</span></span></p>
︡54145787-b581-4bce-8c5e-e7f7b96dc51b︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">Independent vectors are not in the span of another vector (or set of vectors)!</span></span></p>"}
︠c6569e5d-6f89-4fbf-aef3-9986f3f0b045︠
v1 = vector([4,4,4]) #red
Dependent = vector([1, 1, 1]) #dark blue
Independent = vector([0, 2, 1]) #light blue

#forms a line since the two vectors are scalar multiples of each other!
# v1 = vector([1,1,1]);
# v2 = vector([2,2,2]);

graph = arrow((0,0,0), (v1[0],v1[1],v1[2]), color="red")+ arrow((0,0,0), (Dependent[0],Dependent[1],Dependent[2]), color="green") + arrow((0,0,0), (Independent[0],Independent[1],Independent[2]))
graph.show()
︡92b6b2cb-ed2c-4557-bb6a-dd5d1064d132︡{"file":{"filename":"73892869-a499-437b-b929-9cab7082de6c.sage3d","uuid":"73892869-a499-437b-b929-9cab7082de6c"}}︡{"done":true}
︠57285c8b-efef-4204-8c6f-5b5f19f1f979︠
s,t = var('s,t')
v1 = vector([1,0,0]) #red
v2 = vector([0,2,1]) #green
Dependent = vector([1, 2, 1]) #dark blue
Independent = vector([3, 1, 5]) #light blue

graph = parametric_plot3d(s*v1 + t*v2, (s,-2,2), (t,-2,2), color="yellow") + arrow((0,0,0), (v1[0],v1[1],v1[2]), color="red") + arrow((0,0,0), (v2[0],v2[1],v2[2]), color="green") + arrow((0,0,0), (Dependent[0],Dependent[1],Dependent[2]), color="blue") + arrow((0,0,0), (Independent[0],Independent[1],Independent[2]))
graph.show()
︡945e7600-56d9-44bb-befd-b8d6df1989a8︡{"file":{"filename":"64967713-239b-40bd-bad0-abb73a7743e9.sage3d","uuid":"64967713-239b-40bd-bad0-abb73a7743e9"}}︡{"done":true}
︠540b0388-ea2f-412d-89ab-041ea2cd326bi︠
%html
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: large;">Unifying Theorum Part 1 (If you know one is true, you automatically know the others are true):<br>~ A set of n vectors spans Rn<br>~ A set of n vectors is lineraly independent<br>~ Ax = b (written as a series of equations or as an augmented matrix) has one unique solution for every b</span></span></p>
︡7a03d2ed-14e1-449b-b607-34f25d318829︡{"done":true,"html":"<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: large;\">Unifying Theorum Part 1 (If you know one is true, you automatically know the others are true):<br>~ A set of n vectors spans Rn<br>~ A set of n vectors is lineraly independent<br>~ Ax = b (written as a series of equations or as an augmented matrix) has one unique solution for every b</span></span></p>"}
︠213cfefa-9fa5-4cff-afb6-d46525af321di︠
%html
<p style="text-align: center;"><span style="font-size: medium;">References Used:</span></p>
<p style="text-align: center;"><span style="font-size: medium;"><a href='https://doc.sagemath.org/html/en/tutorial/tour_linalg.html'>Sage Linear Algebra Docs</a></span></p>
<p style="text-align: center;"><span style="font-size: medium;"><a href='https://doc.sagemath.org/html/en/reference/modules/sage/modules/vector_integer_dense.html'>Basic Vector Operations</a></span></p>
<p style="text-align: center;"><span style="font-size: medium;"><a href='https://doc.sagemath.org/html/en/tutorial/tour_algebra.html'>Solving Equations</a></span></p>
<p style="text-align: center;"><span style="font-size: medium;"><a href='https://doc.sagemath.org/html/en/reference/plotting/sage/plot/arrow.html'>Plotting 2D Vectors</a></span></p>
<p style="text-align: center;"><span style="font-size: medium;"><a href='https://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/plot3d.html#sage.plot.plot3d.plot3d.plot3d'>Plotting 3D functions</a></span></p>


︡266d45d9-37eb-4023-b2c3-d6abdb3c4059︡{"done":true,"html":"<p style=\"text-align: center;\"><span style=\"font-size: medium;\">References Used:</span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><a href='https://doc.sagemath.org/html/en/tutorial/tour_linalg.html'>Sage Linear Algebra Docs</a></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><a href='https://doc.sagemath.org/html/en/reference/modules/sage/modules/vector_integer_dense.html'>Basic Vector Operations</a></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><a href='https://doc.sagemath.org/html/en/tutorial/tour_algebra.html'>Solving Equations</a></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><a href='https://doc.sagemath.org/html/en/reference/plotting/sage/plot/arrow.html'>Plotting 2D Vectors</a></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><a href='https://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/plot3d.html#sage.plot.plot3d.plot3d.plot3d'>Plotting 3D functions</a></span></p>"}
︠92715fc8-8884-4699-9599-033efb499810︠









