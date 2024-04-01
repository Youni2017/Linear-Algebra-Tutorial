︠9fff935c-3e98-48da-ab94-53bfe7e8adf0i︠
%html
<h1 style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: xx-large;">Combinatorics and Sage Tutorial</span></span></h1>
<p style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: xx-large;">by Andrew Johnson</span></span></p>
<p style="text-align: center;"><span style="font-size: xx-large;"><span style="font-size: medium;">edited by Sara Billey</span></span></p>
<p><span style="font-size: xx-large;"><span style="font-size: medium;">This worksheet is an introduction to the mathematical field of Combinatorics and an exploration of the combinat library in Sage. Combinatorics has many areas of study and so this tutorial will try to simply get a good foundation. To see the Combinatorics library for Sage go to&nbsp;<a href="http://www.sagemath.org/doc/reference/combinat/index.html"><span style="font-size: xx-large;"><span style="font-size: medium;">http://www.sagemath.org/doc/reference/combinat/index.html</span></span>&nbsp;</a>&nbsp;. &nbsp; &nbsp;<span style="text-align: left;">&nbsp;</span></span></span></p>
<p>&nbsp;</p>
<p><span style="font-size: xx-large;"><span style="font-size: medium;"><span style="text-align: left;">For more general background on Sage see&nbsp;</span><a style="text-align: left;" href="http://wstein.org/books/sagebook/sagebook.pdf">http://wstein.org/books/sagebook/sagebook.pdf</a><span style="text-align: left;">&nbsp; &nbsp;and&nbsp;</span><a style="text-align: left;" href="http://docs.python.org/tutorial/">http://docs.python.org/tutorial/</a>&nbsp; and &nbsp;<a href="http://www.diveintopython.net/">http://www.diveintopython.net/</a>&nbsp; and <a href="http://interact.sagemath.org/">http://interact.sagemath.org/</a><a><br /></a></span></span></p>
<p style="text-align: center;"><strong><span style="font-size: xx-large;"><span style="font-size: x-large;">Sets</span></span></strong></p>
<p style="text-align: left;"><span style="font-size: xx-large;"><span style="font-size: medium;">We will start with the Sets data structure and its various functions in Sage even though it is not part of the combinat library. In many combinatorial proofs we are often intersted in constructing various sets, counting their elements, and/or creating bijections between 2 or more sets. For this a good understanding of the set implementation in sage will be useful. To create a set one just simply needs to pass a list/tuple or even other sets to the set() command. Reference page for Sage sets <a href="http://www.sagemath.org/doc/reference/sage/sets/set.html">http://www.sagemath.org/doc/reference/sage/sets/set.html</a>&nbsp;. &nbsp;</span></span></p>

︡f4e3b365-12b1-4282-ba91-cb0715a74465︡{"done":true,"html":"<h1 style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: xx-large;\">Combinatorics and Sage Tutorial</span></span></h1>\n<p style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: xx-large;\">by Andrew Johnson</span></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">edited by Sara Billey</span></span></p>\n<p><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">This worksheet is an introduction to the mathematical field of Combinatorics and an exploration of the combinat library in Sage. Combinatorics has many areas of study and so this tutorial will try to simply get a good foundation. To see the Combinatorics library for Sage go to&nbsp;<a href=\"http://www.sagemath.org/doc/reference/combinat/index.html\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">http://www.sagemath.org/doc/reference/combinat/index.html</span></span>&nbsp;</a>&nbsp;. &nbsp; &nbsp;<span style=\"text-align: left;\">&nbsp;</span></span></span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\"><span style=\"text-align: left;\">For more general background on Sage see&nbsp;</span><a style=\"text-align: left;\" href=\"http://wstein.org/books/sagebook/sagebook.pdf\">http://wstein.org/books/sagebook/sagebook.pdf</a><span style=\"text-align: left;\">&nbsp; &nbsp;and&nbsp;</span><a style=\"text-align: left;\" href=\"http://docs.python.org/tutorial/\">http://docs.python.org/tutorial/</a>&nbsp; and &nbsp;<a href=\"http://www.diveintopython.net/\">http://www.diveintopython.net/</a>&nbsp; and <a href=\"http://interact.sagemath.org/\">http://interact.sagemath.org/</a><a><br /></a></span></span></p>\n<p style=\"text-align: center;\"><strong><span style=\"font-size: xx-large;\"><span style=\"font-size: x-large;\">Sets</span></span></strong></p>\n<p style=\"text-align: left;\"><span style=\"font-size: xx-large;\"><span style=\"font-size: medium;\">We will start with the Sets data structure and its various functions in Sage even though it is not part of the combinat library. In many combinatorial proofs we are often intersted in constructing various sets, counting their elements, and/or creating bijections between 2 or more sets. For this a good understanding of the set implementation in sage will be useful. To create a set one just simply needs to pass a list/tuple or even other sets to the set() command. Reference page for Sage sets <a href=\"http://www.sagemath.org/doc/reference/sage/sets/set.html\">http://www.sagemath.org/doc/reference/sage/sets/set.html</a>&nbsp;. &nbsp;</span></span></p>"}
︠af59c4ac-0a6d-41bd-a465-c60b34a60957s︠
List1 = [1,2,3,10,'a','b','c',pi,3,2,1]
︡28832154-2ceb-4f0a-8971-666a1c90d8dc︡{"done":true}
︠b66a427a-07ab-459e-b21a-92fe6cfd37d1s︠
len(List1)
︡aaae959b-4df0-4ff0-ac3b-07de2f0b4034︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'List1' is not defined\n"}︡{"done":true}︡
︠add979b2-739b-4de5-8632-bca9dd57521bs︠
List1[1]
︡f2e9e2a2-3dd3-4c0d-9169-ee5d11b3e2b6︡{"stdout":"2\n"}︡{"done":true}
︠03b8fb71-59d3-4b39-b369-2eeb5eed4319s︠
List1+List1
︡cf2f4d2e-02fd-4e0d-8290-e6abd0ba5218︡{"stdout":"[1, 2, 3, 10, 'a', 'b', 'c', pi, 3, 2, 1, 1, 2, 3, 10, 'a', 'b', 'c', pi, 3, 2, 1]\n"}︡{"done":true}
︠b66c87fc-e550-463b-a27e-0311e4ca6ea2s︠
Set1 = Set(List1)
Set1
︡3f10a550-57c5-4bdc-9961-2af0d757523e︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'List1' is not defined\n"}︡{"done":true}︡
︠defb5a37-cce6-4443-8efc-048e2764d59ci︠
%html
<p><span id="cell_outer_2"><span style="font-size: medium;">Note that the sets can contain elements that differ in data types. Sage has implementation for all the basic set operations.</span></span></p>

︡02d77487-e8f1-40ac-baa1-90f33322b43a︡{"html":"<p><span id=\"cell_outer_2\"><span style=\"font-size: medium;\">Note that the sets can contain elements that differ in data types. Sage has implementation for all the basic set operations.</span></span></p>"}︡
︠e6db6c81-1ba7-4bdf-af04-af86828fb2ccs︠
A = Set(range(10)); print(A)
B = Set(range(5,15)); print(B)

#Intersection
print("Intersection:", A & B)         #or A.intersection(B)   

#Union
print("Union:", A | B)                #or A.union(B)

#Difference
print("Difference A setminus B:", A.difference(B))
print("Difference B setminus A:", B.difference(A))
︡889e59a9-7fef-4554-a1df-b3d5bd2182c3︡{"stdout":"{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}\n"}︡{"stdout":"{5, 6, 7, 8, 9, 10, 11, 12, 13, 14}\n"}︡{"stdout":"Intersection: {5, 6, 7, 8, 9}\n"}︡{"stdout":"Union: {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}\n"}︡{"stdout":"Difference A setminus B: {0, 1, 2, 3, 4}\n"}︡{"stdout":"Difference B setminus A: {10, 11, 12, 13, 14}\n"}︡{"done":true}
︠0002c9a7-cb08-41c5-90f4-71cbfbf226e7i︠
%html
<p><span id="cell_outer_4"><span style="font-size: medium;">You can get a generator for all the subsets for any set as well as the cartesian product for two given sets.</span></span></p>

︡d6455249-4ed0-4382-aea0-413cbe20d027︡{"html": "<p><span id=\"cell_outer_4\"><span style=\"font-size: medium;\">You can get a generator for all the subsets for any set as well as the cartesian product for two given sets.</span></span></p>"}︡
︠4d0e9714-64bc-4d53-ab77-cd66871a257cs︠
C = Set([1,2,3])
D = Set([4,5,6])
sub = subsets(C) 
print("subsets C:", list(sub))

Prod = cartesian_product([C,D])
print("Cartesian Product C and D:", list(Prod))
︡da49dcb1-9f30-4090-97a9-68f5caf4566b︡{"stdout":"subsets C: [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]\n"}︡{"stdout":"Cartesian Product C and D: [(1, 4), (1, 5), (1, 6), (2, 4), (2, 5), (2, 6), (3, 4), (3, 5), (3, 6)]\n"}︡{"done":true}
︠436fd212-e512-4372-8d48-a279dab70874i︠
%html
<p>To get help on a command, type its name and then "?". &nbsp; &nbsp;To see the internal code for a command type the name of the command and "??".</p>

︡013fa02d-cd1c-42e0-b3e3-81350acac373︡{"html":"<p>To get help on a command, type its name and then \"?\". &nbsp; &nbsp;To see the internal code for a command type the name of the command and \"??\".</p>"}︡
︠da1706da-3c26-4428-b8b4-d105b4f92c05s︠
subsets?
︡ac7fb4ef-21ec-4816-9d37-a370e999b4ea︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: /ext/sage/10.2/src/sage/combinat/subset.py\nDocstring :\nIterator over the *list* of all subsets of the iterable \"X\", in no\nparticular order. Each list appears exactly once, up to order.\n\nINPUT:\n\n* \"X\" - an iterable\n\nOUTPUT: iterator of lists\n\nEXAMPLES:\n\n   sage: list(powerset([1,2,3]))\n   [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]\n   sage: [z for z in powerset([0,[1,2]])]\n   [[], [0], [[1, 2]], [0, [1, 2]]]\n\nIterating over the power set of an infinite set is also allowed:\n\n   sage: i = 0\n   sage: L = []\n   sage: for x in powerset(ZZ):\n   ....:     if i > 10:\n   ....:         break\n   ....:     else:\n   ....:         i += 1\n   ....:     L.append(x)\n   sage: print(\" \".join(str(x) for x in L))\n   [] [0] [1] [0, 1] [-1] [0, -1] [1, -1] [0, 1, -1] [2] [0, 2] [1, 2]\n\nYou may also use subsets as an alias for powerset:\n\n   sage: subsets([1,2,3])\n   <generator object ...powerset at 0x...>\n   sage: list(subsets([1,2,3]))\n   [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]\n\n   The reason we return lists instead of sets is that the elements of\n   sets must be hashable and many structures on which one wants the\n   powerset consist of non-hashable objects.\n\nAUTHORS:\n\n* William Stein\n\n* Nils Bruin (2006-12-19): rewrite to work for not-necessarily\n  finite objects X."}}︡{"done":true}
︠bcd13645-ec34-4548-a77e-e930d42169abs︠
subsets??
︡dd7e12fe-0657-47fa-8bda-1f694111b23f︡{"code":{"filename":null,"lineno":-1,"mode":"python","source":"   File: /ext/sage/10.2/src/sage/combinat/subset.py\n   Source:\n   def powerset(X):\n    r\"\"\"\n    Iterator over the *list* of all subsets of the iterable ``X``, in no\n    particular order. Each list appears exactly once, up to order.\n\n    INPUT:\n\n    -  ``X`` - an iterable\n\n    OUTPUT: iterator of lists\n\n    EXAMPLES::\n\n        sage: list(powerset([1,2,3]))\n        [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]\n        sage: [z for z in powerset([0,[1,2]])]\n        [[], [0], [[1, 2]], [0, [1, 2]]]\n\n    Iterating over the power set of an infinite set is also allowed::\n\n        sage: i = 0\n        sage: L = []\n        sage: for x in powerset(ZZ):\n        ....:     if i > 10:\n        ....:         break\n        ....:     else:\n        ....:         i += 1\n        ....:     L.append(x)\n        sage: print(\" \".join(str(x) for x in L))\n        [] [0] [1] [0, 1] [-1] [0, -1] [1, -1] [0, 1, -1] [2] [0, 2] [1, 2]\n\n    You may also use subsets as an alias for powerset::\n\n        sage: subsets([1,2,3])\n        <generator object ...powerset at 0x...>\n        sage: list(subsets([1,2,3]))\n        [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]\n\n        The reason we return lists instead of sets is that the elements of\n        sets must be hashable and many structures on which one wants the\n        powerset consist of non-hashable objects.\n\n    AUTHORS:\n\n    - William Stein\n\n    - Nils Bruin (2006-12-19): rewrite to work for not-necessarily\n      finite objects X.\n    \"\"\"\n    yield []\n    pairs = []\n    power2 = 1\n    for x in X:\n        pairs.append((power2, x))\n        next_power2 = power2 << 1\n        for w in range(power2, next_power2):\n            yield [x for m, x in pairs if m & w]\n        power2 = next_power2\n"}}︡{"done":true}
︠3231b892-0fbf-4103-90f3-74104c25b73fs︠
#help for commands on defined objects works the same way
C?
︡bc7d7e75-3018-49cc-975d-e227e004abb5︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: /ext/sage/10.2/src/sage/sets/set.py\nDocstring :\nA finite enumerated set."}}︡{"done":true}
︠025ec971-8c47-4cba-8679-fce8ca3e6af7s︠
print(A.cardinality())
print(Prod.cardinality())
print(Set(ZZ).cardinality()) ## ZZ is the Integer ring (or simply the set of all integers)
︡0cad2085-0b1b-47a7-93ce-83fcd0d4fdf6︡{"stdout":"10\n"}︡{"stdout":"9\n"}︡{"stdout":"+Infinity\n"}︡{"done":true}
︠17cc9138-3cca-4ade-936e-bec28721777es︠

︡c3bdf7f5-987a-4e93-9711-33289e756391︡{"done":true}
︠961f005a-ee87-43cf-a77b-ca713093e153i︠
%html
<div id="cell_text_98" class="text_cell">
<p style="text-align: center;"><strong><span style="font-size: x-large;">Counting Functions</span></strong></p>
<p style="text-align: left;"><span style="font-size: x-large;"><span style="font-size: medium;">Put simply, Combinatorics is the study of counting objects, as such there are many tools that we can use to count them. It is sometimes the case that certain number patterns appear frequently for different situations or they are used often enough that they become major fields of study. Luckily Sage has implementation for many of these <a href="http://www.sagemath.org/doc/reference/sage/combinat/combinat.html">Combinatorial functions</a>, but lets first start with some basic counting principles.</span></span></p>
<p style="text-align: left;"><span style="font-size: x-large;"><span style="font-size: medium;">The factorial of a non-negative integer n, denoted by n!, is the product of all the positive integers less than or equal to n. For example 5!=5*4*3*2*1<strong>=</strong>120. To calculate the factorial of n in Sage just use the factorial(n) command. By definition we say 0! = 1. An instance of this is given the set of letters {a,b,c,d,e} how many different "words" (for example adbce) can I create? The first letter has 5 choices, the second 4, the third 3, and so on and we see that it is 5!. This is an example of permutations which will be discussed later.</span></span><strong><span style="font-size: x-large;"><br /></span></strong></p>
</div>

︡2bf7424f-3b68-4a12-a7a0-53663ca065fc︡{"html": "<div id=\"cell_text_98\" class=\"text_cell\">\n<p style=\"text-align: center;\"><strong><span style=\"font-size: x-large;\">Counting Functions</span></strong></p>\n<p style=\"text-align: left;\"><span style=\"font-size: x-large;\"><span style=\"font-size: medium;\">Put simply, Combinatorics is the study of counting objects, as such there are many tools that we can use to count them. It is sometimes the case that certain number patterns appear frequently for different situations or they are used often enough that they become major fields of study. Luckily Sage has implementation for many of these <a href=\"http://www.sagemath.org/doc/reference/sage/combinat/combinat.html\">Combinatorial functions</a>, but lets first start with some basic counting principles.</span></span></p>\n<p style=\"text-align: left;\"><span style=\"font-size: x-large;\"><span style=\"font-size: medium;\">The factorial of a non-negative integer n, denoted by n!, is the product of all the positive integers less than or equal to n. For example 5!=5*4*3*2*1<strong>=</strong>120. To calculate the factorial of n in Sage just use the factorial(n) command. By definition we say 0! = 1. An instance of this is given the set of letters {a,b,c,d,e} how many different \"words\" (for example adbce) can I create? The first letter has 5 choices, the second 4, the third 3, and so on and we see that it is 5!. This is an example of permutations which will be discussed later.</span></span><strong><span style=\"font-size: x-large;\"><br /></span></strong></p>\n</div>"}︡
︠1592863a-37dc-4634-9a6b-14d999c434b6s︠
print(factorial(5))
print(factorial(14))
print(factorial(52))
print(factorial(0))
#print(factorial(-1))             #Gives an error
︡c8558657-4a34-4a4a-a26a-30abd7f7e1b6︡{"stdout":"120\n"}︡{"stdout":"87178291200\n"}︡{"stdout":"80658175170943878571660636856403766975289505440883277824000000000000\n"}︡{"stdout":"1\n"}︡{"done":true}
︠5c984800-ab50-4b18-994a-e8374b4b1475i︠
%html
<p><span id="cell_outer_102"><span style="font-size: medium;">It is often that case that you do not want to multiple all of the integers less than or equal to n, but only the last k integers (n,n-1,n-2,...,n-k+1). You may have noticed that this can be calculated by n!/(n-k)! which is simple enough but sage has no direct way to compute this like factorial(). The simple approach would be to calculate factorial(n) and factorial(n-k) then perform division, but if our k was small such as 2 this can be inefficient. So we will need to use a different function, name the falling_factorial(n,k). To continue with our word example from above for k=3 this is the same as asking how many words can we get from {a,b,c,d,e} that have length 3 to which the answer is 5*4*3 = 60 ways.</span></span></p>

︡63c98f32-1592-4b40-98ce-3110589c8d9a︡{"html": "<p><span id=\"cell_outer_102\"><span style=\"font-size: medium;\">It is often that case that you do not want to multiple all of the integers less than or equal to n, but only the last k integers (n,n-1,n-2,...,n-k+1). You may have noticed that this can be calculated by n!/(n-k)! which is simple enough but sage has no direct way to compute this like factorial(). The simple approach would be to calculate factorial(n) and factorial(n-k) then perform division, but if our k was small such as 2 this can be inefficient. So we will need to use a different function, name the falling_factorial(n,k). To continue with our word example from above for k=3 this is the same as asking how many words can we get from {a,b,c,d,e} that have length 3 to which the answer is 5*4*3 = 60 ways.</span></span></p>"}︡
︠0d9ccb52-5d35-4552-9830-2e03306cfee8s︠
print(falling_factorial(10,3))
print(factorial(10)/factorial(10-3))
print(falling_factorial(10,0))
print(falling_factorial(10,10))
︡754ebded-d792-40ba-9d36-cf1e5d20bea9︡{"stdout":"720\n"}︡{"stdout":"720\n"}︡{"stdout":"1\n"}︡{"stdout":"3628800\n"}︡{"done":true}
︠4f69bf5b-8e61-4947-b366-c32d9f7eb69bi︠
%html
<p><span style="font-size: medium;">Binomial coefficients are another set of commonly used numbers and are very similar to our last function. For positive inters n,k where k is less than or equal to n the binomial coefficient of n and k is n!/[k!(n-k)!], this looks very similar to our previous function but with an extra k! in the divisor. An easy way to see why the k! is needed is to again look at our word problem, note that 'abd' and 'bad' have the same letters but in different order. But if we were more interested in what elements were <em>chosen</em> and ignoring the order in which they were chosen then 'abd' and 'bad are the same, but our falling_factorial() function will count both of these words which is too many and so we must divide by the number of ways we can order a word of size k, which we already found to be k!</span></p>
<p><span style="font-size: medium;">There are two functions in Sage that handle binomial coffecients, binomial(n,k) and binomial_coefficients(n). The first function returns a single solution for specific values of n and k whereas the second function returns a dictionary of all the binimial coefficients j and k such that j+k = n.</span></p>

︡4e9916da-5f73-4d32-926b-8b8b24cc9add︡{"html": "<p><span style=\"font-size: medium;\">Binomial coefficients are another set of commonly used numbers and are very similar to our last function. For positive inters n,k where k is less than or equal to n the binomial coefficient of n and k is n!/[k!(n-k)!], this looks very similar to our previous function but with an extra k! in the divisor. An easy way to see why the k! is needed is to again look at our word problem, note that 'abd' and 'bad' have the same letters but in different order. But if we were more interested in what elements were <em>chosen</em> and ignoring the order in which they were chosen then 'abd' and 'bad are the same, but our falling_factorial() function will count both of these words which is too many and so we must divide by the number of ways we can order a word of size k, which we already found to be k!</span></p>\n<p><span style=\"font-size: medium;\">There are two functions in Sage that handle binomial coffecients, binomial(n,k) and binomial_coefficients(n). The first function returns a single solution for specific values of n and k whereas the second function returns a dictionary of all the binimial coefficients j and k such that j+k = n.</span></p>"}︡
︠5220802f-4546-4e3a-851f-9836247d6ec2s︠
print(binomial(8,2))
print(binomial_coefficients(10))
︡7456dab7-bf71-4839-b1e5-db664ca80019︡{"stdout":"28\n"}︡{"stdout":"{(0, 10): 1, (10, 0): 1, (1, 9): 10, (9, 1): 10, (2, 8): 45, (8, 2): 45, (3, 7): 120, (7, 3): 120, (4, 6): 210, (6, 4): 210, (5, 5): 252}\n"}︡{"done":true}
︠aad638a9-ac96-4fc4-a1de-0d8c5fb6a551i︠
%html
<p><span id="cell_outer_107"><span style="font-size: medium;">Next we have the famous Fibonacci numbers which are defined as the following recurrence relation: For a function F let F(0)=0, F(1)=1 and F(n)=F(n-1)+F(n-2). In Sage this can be found using fibonacci(n) or if you want to go through the first n fibonacci numbers use fibonacci_sequence(n) which returns a generator and you can use the .next() method to get each element. The Fibonacci numbers and binomial coefficients have many interesting relationships with each other which can be found <a href="http://en.wikipedia.org/wiki/Pascal%27s_triangle">here</a> for those interested.</span></span></p>

︡6512b0e1-bb09-4f2e-9679-9eb85a1502e3︡{"html": "<p><span id=\"cell_outer_107\"><span style=\"font-size: medium;\">Next we have the famous Fibonacci numbers which are defined as the following recurrence relation: For a function F let F(0)=0, F(1)=1 and F(n)=F(n-1)+F(n-2). In Sage this can be found using fibonacci(n) or if you want to go through the first n fibonacci numbers use fibonacci_sequence(n) which returns a generator and you can use the .next() method to get each element. The Fibonacci numbers and binomial coefficients have many interesting relationships with each other which can be found <a href=\"http://en.wikipedia.org/wiki/Pascal%27s_triangle\">here</a> for those interested.</span></span></p>"}︡
︠b3fd32e5-285b-4616-902b-79ec5733d59fs︠
next(G)
︡df1527d7-2b4b-424a-aaee-a169ea74082a︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'G' is not defined\n"}︡{"done":true}︡
︠ceae2170-1c4e-4cb5-a7fe-f46db1355676s︠
print(fibonacci(5))
print(fibonacci(50))
G = fibonacci_sequence(10)
for i in range(10):
    print(next(G))
︡5be6fc0b-a38d-4fe9-be79-f3c84804eb79︡{"stdout":"5\n"}︡{"stdout":"12586269025\n"}︡{"stdout":"0\n1\n1\n2\n3\n5\n8\n13\n21\n34\n"}︡{"done":true}
︠fb9b2e0d-09b6-4ec1-8d58-baddd33411dai︠
%html
<p><span style="font-size: medium;">Other combinatorial functions of interest are the Catalan numbers, Stirling (first/second kind) numbers, Euler numbers, and Bell numbers. We will see later that the Stirling numbers and Bell numbers have their roots in set partitions.</span></p>
<div id="cell_text_8" class="text_cell">
<p style="text-align: center;"><strong><span style="font-size: x-large;">Permutations</span></strong></p>
<p style="text-align: left;"><span style="font-size: x-large;"><span style="font-size: medium;">A permutation on a set of objects is an arrangement of those objects in some order. In the combinat library for Sage there is conviently a Permutation class that can perform many operations as needed, see it <a href="http://www.sagemath.org/doc/reference/sage/combinat/permutation.html">here</a></span></span><span style="font-size: x-large;"><span style="font-size: medium;">. An example of a permutation is 4123 from the set {1,2,3,4}. To get a list of all the permutations of a set you can call Permutations(n) where n is an integer, list, set, or string. The elements of the list are of type <a href="http://www.sagemath.org/doc/reference/sage/combinat/permutation.html#sage.combinat.permutation.Permutation_class">Permutation_Class</a>.</span></span></p>
</div>

︡3ee092c0-0712-4a99-841c-407daf354290︡{"html": "<p><span style=\"font-size: medium;\">Other combinatorial functions of interest are the Catalan numbers, Stirling (first/second kind) numbers, Euler numbers, and Bell numbers. We will see later that the Stirling numbers and Bell numbers have their roots in set partitions.</span></p>\n<div id=\"cell_text_8\" class=\"text_cell\">\n<p style=\"text-align: center;\"><strong><span style=\"font-size: x-large;\">Permutations</span></strong></p>\n<p style=\"text-align: left;\"><span style=\"font-size: x-large;\"><span style=\"font-size: medium;\">A permutation on a set of objects is an arrangement of those objects in some order. In the combinat library for Sage there is conviently a Permutation class that can perform many operations as needed, see it <a href=\"http://www.sagemath.org/doc/reference/sage/combinat/permutation.html\">here</a></span></span><span style=\"font-size: x-large;\"><span style=\"font-size: medium;\">. An example of a permutation is 4123 from the set {1,2,3,4}. To get a list of all the permutations of a set you can call Permutations(n) where n is an integer, list, set, or string. The elements of the list are of type <a href=\"http://www.sagemath.org/doc/reference/sage/combinat/permutation.html#sage.combinat.permutation.Permutation_class\">Permutation_Class</a>.</span></span></p>\n</div>"}︡
︠abbb3260-d149-49ba-9f34-e684e7b83fed︠
print(Permutations([1,2,3]).list(), "\n")
print(Permutations(4).list(), "\n"  )          #all the Permutations of the set {1,2,3,4}
print(Permutations(['a',pi, 1]).list(), "\n")
print(Permutations("Hey").list())
︡d2cb6d04-5493-44f7-9001-e8f91a5f671f︡{"stdout":"[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]] \n\n"}︡{"stdout":"[[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4], [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2], [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4], [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1], [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4], [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1], [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3], [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]] \n\n"}︡{"stdout":"[['a', pi, 1], ['a', 1, pi], [pi, 'a', 1], [pi, 1, 'a'], [1, 'a', pi], [1, pi, 'a']] \n\n"}︡{"stdout":"[['H', 'e', 'y'], ['H', 'y', 'e'], ['e', 'H', 'y'], ['e', 'y', 'H'], ['y', 'H', 'e'], ['y', 'e', 'H']]\n"}︡
︠b74f940c-a1b6-4f63-87d1-0bc7bd93feaai︠
%html
<p><span style="font-size: medium;"><span id="cell_outer_69"><span style="font-size: medium;">The individual elements of these lists have data type Permutation_Class that also have many useful functions we will explore later.</span></span></span></p>
<p><span style="font-size: medium;">What the function actually returns is a generator G which will produce the desired permutations as necessary. Many combinatorial commands in Sage return generators and knowing how to iterate through these lists is important. One way to get these elements is with the G.list() command which returns a list of all the elements in the generator but this can be terribly inefficient for large lists. Another way to retrieve elements is to use list syntax g[i] (zero-based indexing) and in combination with G.cardinality() it is a good way to iterate over the elements without converting G to a list. <br /></span></p>

︡3af6d68b-2cc9-43a3-9604-051314bd6413︡{"html": "<p><span style=\"font-size: medium;\"><span id=\"cell_outer_69\"><span style=\"font-size: medium;\">The individual elements of these lists have data type Permutation_Class that also have many useful functions we will explore later.</span></span></span></p>\n<p><span style=\"font-size: medium;\">What the function actually returns is a generator G which will produce the desired permutations as necessary. Many combinatorial commands in Sage return generators and knowing how to iterate through these lists is important. One way to get these elements is with the G.list() command which returns a list of all the elements in the generator but this can be terribly inefficient for large lists. Another way to retrieve elements is to use list syntax g[i] (zero-based indexing) and in combination with G.cardinality() it is a good way to iterate over the elements without converting G to a list. <br /></span></p>"}︡
︠4d894e4d-ca46-4656-b220-a9e969dde8fa︠
G = Permutations(3)
print(type(G[0]))
print(G.list())
for i in range(G.cardinality()):
    print(G[i])
︡f608e1b8-514f-416d-9514-b1e59ca0ea6b︡{"stdout":"<class 'sage.combinat.permutation.StandardPermutations_n_with_category.element_class'>\n"}︡{"stdout":"[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]\n"}︡{"stdout":"[1, 2, 3]\n[1, 3, 2]\n[2, 1, 3]\n[2, 3, 1]\n[3, 1, 2]\n[3, 2, 1]\n"}︡
︠32404258-8693-45e4-ac9e-7cfc6d319ae0i︠
%html
<p><span style="font-size: medium;">While the above method is valid it can be inefficient if the cardinality method is hard to calculate. Generators have a command G.next(obj) that takes the input object and outputs the next object that would occur in the list. If the object is not part of the generator or it is at the end of the list it will return either None or False. Similarily there are G.first() and G.last() commands that get the first and last elements. We will perform the above code again but using these methods.<br /></span></p>

︡b7678abf-2546-420b-b79a-738ed5297c64︡{"html": "<p><span style=\"font-size: medium;\">While the above method is valid it can be inefficient if the cardinality method is hard to calculate. Generators have a command G.next(obj) that takes the input object and outputs the next object that would occur in the list. If the object is not part of the generator or it is at the end of the list it will return either None or False. Similarily there are G.first() and G.last() commands that get the first and last elements. We will perform the above code again but using these methods.<br /></span></p>"}︡
︠7677b5fc-ecb5-4950-8cf9-44a702d96997s︠
p = G.first()
while(p):
    print(p)
    p = next(G)
︡ba7b73f2-ac83-466f-aa35-29feff1ce044︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'G' is not defined\n"}︡{"done":true}︡
︠c36011c3-b036-46e7-98a6-e896fb67a806i︠
%html
<p><span id="cell_outer_10"><span style="font-size: medium;">For a set with n elements, the total number of permutations can be found by first choosing an element to take the first spot which can be done in n ways, for the second element n-1 ways, and so on and therefore the total number of permutations is n*(n-1)*(n-2)...*1 = factorial(n). Any set that is an ordering on n elements is called the symmetric group, S<span style="font-size: x-small;">n</span>, of that set. The cardinality of any S<span style="font-size: x-small;">n<span style="font-size: medium;"> is factorial(n) for any set of n elements. For this tutorial define [n] to be the set of the first n integers {1,2,...,n}.</span></span></span></span></p>

︡6850f457-a1cb-4d89-bf05-e03b5df6ffb8︡{"html": "<p><span id=\"cell_outer_10\"><span style=\"font-size: medium;\">For a set with n elements, the total number of permutations can be found by first choosing an element to take the first spot which can be done in n ways, for the second element n-1 ways, and so on and therefore the total number of permutations is n*(n-1)*(n-2)...*1 = factorial(n). Any set that is an ordering on n elements is called the symmetric group, S<span style=\"font-size: x-small;\">n</span>, of that set. The cardinality of any S<span style=\"font-size: x-small;\">n<span style=\"font-size: medium;\"> is factorial(n) for any set of n elements. For this tutorial define [n] to be the set of the first n integers {1,2,...,n}.</span></span></span></span></p>"}︡
︠4c000403-983d-4b03-bdb6-646175702204︠
L = Permutations(8)               #Permutations of [8]
L.cardinality() == factorial(8)
︡f3acc5df-77c1-4112-928b-71a632b59326︡{"stdout":"True\n"}︡
︠bce14bce-2c97-4317-88de-a30d51f69050i︠
%html
<p><span style="font-size: medium;">Sometimes we are only interested in permutations of the n elements that have a certain length k. To do so just pass you desired length k as a second argument: Permutations(n,k). If you recall from the Counting Functions section of this tutorial we used a falling_factorial function, it should be readily seen that the number of k-permutations on n elements is precisely the same as the value we get from our function for the same values of n and k.<br /></span></p>

︡8a3b6d5c-32c9-4a8f-b784-e7461eaa6fa1︡{"html": "<p><span style=\"font-size: medium;\">Sometimes we are only interested in permutations of the n elements that have a certain length k. To do so just pass you desired length k as a second argument: Permutations(n,k). If you recall from the Counting Functions section of this tutorial we used a falling_factorial function, it should be readily seen that the number of k-permutations on n elements is precisely the same as the value we get from our function for the same values of n and k.<br /></span></p>"}︡
︠10fa987e-3532-4b05-8a6b-fd929c6cb8c4︠
L = Permutations(5,3)
print(L.list())                                       #Permutations of [5] with length of 3
print(falling_factorial(5,3) == L.cardinality())
︡818301b4-9deb-426f-b032-02902ab7e88c︡{"stdout":"[[1, 2, 3], [1, 2, 4], [1, 2, 5], [1, 3, 2], [1, 3, 4], [1, 3, 5], [1, 4, 2], [1, 4, 3], [1, 4, 5], [1, 5, 2], [1, 5, 3], [1, 5, 4], [2, 1, 3], [2, 1, 4], [2, 1, 5], [2, 3, 1], [2, 3, 4], [2, 3, 5], [2, 4, 1], [2, 4, 3], [2, 4, 5], [2, 5, 1], [2, 5, 3], [2, 5, 4], [3, 1, 2], [3, 1, 4], [3, 1, 5], [3, 2, 1], [3, 2, 4], [3, 2, 5], [3, 4, 1], [3, 4, 2], [3, 4, 5], [3, 5, 1], [3, 5, 2], [3, 5, 4], [4, 1, 2], [4, 1, 3], [4, 1, 5], [4, 2, 1], [4, 2, 3], [4, 2, 5], [4, 3, 1], [4, 3, 2], [4, 3, 5], [4, 5, 1], [4, 5, 2], [4, 5, 3], [5, 1, 2], [5, 1, 3], [5, 1, 4], [5, 2, 1], [5, 2, 3], [5, 2, 4], [5, 3, 1], [5, 3, 2], [5, 3, 4], [5, 4, 1], [5, 4, 2], [5, 4, 3]]\n"}︡{"stdout":"True\n"}︡
︠f607a0e7-a2fb-4298-a449-a0b5fc818e1fi︠
%html
<p><span id="cell_outer_11"><span style="font-size: medium;">To create an individual element of a Permutation_Class object you can simply do the following.</span></span></p>

︡f54cb3c9-9362-46cf-af0e-7b18c5a25c42︡{"html": "<p><span id=\"cell_outer_11\"><span style=\"font-size: medium;\">To create an individual element of a Permutation_Class object you can simply do the following.</span></span></p>"}︡
︠a80e1d73-d327-4b47-90d7-8c11f83df1b1︠
p = Permutation([1,3,2,4])
p
︡67b275d7-97c1-4f36-bef6-f65edbc19b03︡{"stdout":"[1, 3, 2, 4]\n"}︡
︠d8e2ab7a-9b36-455e-90a3-3daa190c6843i︠
%html
<p><span id="cell_outer_12"><span style="font-size: medium;">Permutation_Class objects have many useful methods to learn details about the permutation you created. For example when examing permutations of [n] it is possible to get the number of fixed points or the number of peaks in a permutation. A fixed point in combinatorics is that for some integer 0&lt;i&lt;n+1, the i<span style="font-size: x-small;">th<span style="font-size: medium;"> spot in the permutation is i, in 1342 the number 1 is in the first spot and so it is a fixed point. A peak in a permutation is when three consecutive numbers ijk have the property that i&lt;j&gt;k.</span></span></span></span></p>

︡a996670d-6984-4ad5-a770-ed2c629ba7ef︡{"html": "<p><span id=\"cell_outer_12\"><span style=\"font-size: medium;\">Permutation_Class objects have many useful methods to learn details about the permutation you created. For example when examing permutations of [n] it is possible to get the number of fixed points or the number of peaks in a permutation. A fixed point in combinatorics is that for some integer 0&lt;i&lt;n+1, the i<span style=\"font-size: x-small;\">th<span style=\"font-size: medium;\"> spot in the permutation is i, in 1342 the number 1 is in the first spot and so it is a fixed point. A peak in a permutation is when three consecutive numbers ijk have the property that i&lt;j&gt;k.</span></span></span></span></p>"}︡
︠be0b614d-e5bf-4fb5-8cc2-c605be22a3f4︠
print(p.number_of_fixed_points())
print(p.number_of_peaks())
︡df2b44ca-ebaa-44ec-a81a-650688d3a462︡{"stdout":"2\n"}︡{"stdout":"1\n"}︡
︠95ab9525-c185-43e8-8cbe-e295aa3753c4i︠
%html
<p><span id="cell_outer_14"><span style="font-size: medium;">For those more knowledgeble in the field you can even get a list of permutations that avoid certain patterns or check if a permutation does avoid a pattern. It is obvious that if we remove all the permutations that have a pattern then we will have fewer elements then that of the symmetric group of n.<br /></span></span></p>

︡a504cdb0-8cdb-4197-bdaa-0aecf66cd2d0︡{"html": "<p><span id=\"cell_outer_14\"><span style=\"font-size: medium;\">For those more knowledgeble in the field you can even get a list of permutations that avoid certain patterns or check if a permutation does avoid a pattern. It is obvious that if we remove all the permutations that have a pattern then we will have fewer elements then that of the symmetric group of n.<br /></span></span></p>"}︡
︠5ebc47dd-dc61-4ee8-9305-e0c9bc27a2bb︠
L = Permutations(5, avoiding = [3,4,1,2])
print(L)
print(L.cardinality())
L.cardinality() < factorial(5)
︡7abd6c4a-a432-4259-b207-c501a51b82a1︡{"stdout":"Standard permutations of 5 avoiding [[3, 4, 1, 2]]\n"}︡{"stdout":"103\n"}︡{"stdout":"True\n"}︡
︠16c610ba-5e9f-48fd-a98c-0bb168577b7f︠
p = Permutation([1,2,3,5,4])
print(p.avoids([3,1,2,4]))
print(p.avoids([1,2,3,4]))
︡ddbf4285-f977-4f8a-84eb-1c8966c279d9︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡
︠aa09f3a1-066f-417d-9b12-e22ed622d479i︠
%html
<div id="cell_text_15" class="text_cell">
<p style="text-align: center;"><strong><span style="font-size: x-large;">Set Partitions</span></strong></p>
<p style="text-align: left;"><span style="font-size: x-large;"><span style="font-size: medium;">A partition of a set X divides or breaks up X into smaller sets in such a way that no two sets have a common element and the union of all of these sets gives us back the original X. For example consider the set {1,2,3}, this set can be broken into the following two parts {1,3} and {2}. This of course is not the only way to break up this set into two parts. To get all the partitions of a set in Sage use the SetPartitions(n) where n is an integer, string, list, or a set.</span></span><strong><span style="font-size: x-large;"><br style="font-size: medium;" /></span></strong></p>
</div>

︡912cf27b-b15e-4403-af76-48d3bd5d238b︡{"html": "<div id=\"cell_text_15\" class=\"text_cell\">\n<p style=\"text-align: center;\"><strong><span style=\"font-size: x-large;\">Set Partitions</span></strong></p>\n<p style=\"text-align: left;\"><span style=\"font-size: x-large;\"><span style=\"font-size: medium;\">A partition of a set X divides or breaks up X into smaller sets in such a way that no two sets have a common element and the union of all of these sets gives us back the original X. For example consider the set {1,2,3}, this set can be broken into the following two parts {1,3} and {2}. This of course is not the only way to break up this set into two parts. To get all the partitions of a set in Sage use the SetPartitions(n) where n is an integer, string, list, or a set.</span></span><strong><span style=\"font-size: x-large;\"><br style=\"font-size: medium;\" /></span></strong></p>\n</div>"}︡
︠86eda0be-2442-486c-9f05-9227877d6f3a︠
A = SetPartitions(3)             #Partitions of [3]
print(A.list())
print(A.cardinality(), "\n")

B = SetPartitions([2,3,4,5])
print(B.list())
print(B.cardinality())
︡58d60f79-7475-48c1-9568-c4d78e12225b︡{"stdout":"[{{1, 2, 3}}, {{1}, {2, 3}}, {{1, 3}, {2}}, {{1, 2}, {3}}, {{1}, {2}, {3}}]\n"}︡{"stdout":"5 \n\n"}︡{"stdout":"[{{2, 3, 4, 5}}, {{2}, {3, 4, 5}}, {{2, 4, 5}, {3}}, {{2, 3, 5}, {4}}, {{2, 3, 4}, {5}}, {{2, 3}, {4, 5}}, {{2, 4}, {3, 5}}, {{2, 5}, {3, 4}}, {{2}, {3}, {4, 5}}, {{2}, {3, 5}, {4}}, {{2}, {3, 4}, {5}}, {{2, 5}, {3}, {4}}, {{2, 4}, {3}, {5}}, {{2, 3}, {4}, {5}}, {{2}, {3}, {4}, {5}}]\n"}︡{"stdout":"15\n"}︡
︠9d24e6f0-cf0d-4f40-8e93-d5f30c4ad21di︠
%html
<div id="cell_text_16" class="text_cell">
<p><span style="font-size: medium;">If you are interested only in partitions of k many parts then you can simply do the following.</span></p>
</div>

︡8943d28e-b9a3-4f19-a813-ac7b812b9de9︡{"html": "<div id=\"cell_text_16\" class=\"text_cell\">\n<p><span style=\"font-size: medium;\">If you are interested only in partitions of k many parts then you can simply do the following.</span></p>\n</div>"}︡
︠fd40a516-72a4-4741-b720-788f6e4d3fef︠
P = SetPartitions(4,3)        #Partitions of [4] into 3 parts
print(type(P[0]))
print(P[0], "\n" )         
print(P.list())
print(P.cardinality())
︡6a27736e-4223-44af-9720-9e6622dd7398︡{"stdout":"<class 'sage.combinat.set_partition.SetPartitions_setn_with_category.element_class'>\n"}︡{"stdout":"{{1}, {2}, {3, 4}} \n\n"}︡{"stdout":"[{{1}, {2}, {3, 4}}, {{1}, {2, 4}, {3}}, {{1}, {2, 3}, {4}}, {{1, 4}, {2}, {3}}, {{1, 3}, {2}, {4}}, {{1, 2}, {3}, {4}}]\n"}︡{"stdout":"6\n"}︡
︠e10da2c6-deb0-4873-aa55-0f26b4ef209ei︠
%html
<div id="insert_new_cell_before17" class="insert_new_cell">&nbsp;</div>
<div id="cell_text_17" class="text_cell">
<p><span style="font-size: medium;">If you wish to be really specific on how you partition your set you can pass as a second arguement a list instead of an integer. For example if you want to partition [5] into 3 sets such that one set has 3 elements and the other two have 1 element pass the list [3,1,1]. It is important that the list be in descending order otherwise you will get an error.</span></p>
</div>

︡ec98cbd2-e0da-478a-9a9b-81d3f60c66a9︡{"html": "<div id=\"insert_new_cell_before17\" class=\"insert_new_cell\">&nbsp;</div>\n<div id=\"cell_text_17\" class=\"text_cell\">\n<p><span style=\"font-size: medium;\">If you wish to be really specific on how you partition your set you can pass as a second arguement a list instead of an integer. For example if you want to partition [5] into 3 sets such that one set has 3 elements and the other two have 1 element pass the list [3,1,1]. It is important that the list be in descending order otherwise you will get an error.</span></p>\n</div>"}︡
︠b5861ff5-1c42-45f2-89ac-828097315d1f︠
print(SetPartitions(5,[3,1,1]).list())
print(SetPartitions(5,[3,1,1]).cardinality())
︡5db0f85c-c521-4959-83c6-bcb703cb25b9︡{"stdout": "[{{2}, {3, 4, 5}, {1}}, {{2, 4, 5}, {3}, {1}}, {{2, 3, 5}, {4}, {1}}, {{5}, {2, 3, 4}, {1}}, {{1, 4, 5}, {2}, {3}}, {{4}, {1, 3, 5}, {2}}, {{1, 3, 4}, {5}, {2}}, {{4}, {3}, {1, 2, 5}}, {{5}, {3}, {1, 2, 4}}, {{4}, {5}, {1, 2, 3}}]\n10"}︡
︠e65c4fe1-9f8f-4daf-9154-f23c7599c696i︠
%html
<p><span style="font-size: medium;">There are two combinatorial functions that are concerned with set partitions, Stirling numbers of the second kind and Bell numbers. The Stirling numbers count the number of partitions of [n] into k parts while Bell numbers counts all the possible partitions of [n]. In Sage these numbers can be retrieved with stirling_number2 and bell_number. To show these equalities we will count the elements ourselves.</span></p>

︡c59484df-9823-4b1e-853f-87c6f1c90e81︡{"html": "<p><span style=\"font-size: medium;\">There are two combinatorial functions that are concerned with set partitions, Stirling numbers of the second kind and Bell numbers. The Stirling numbers count the number of partitions of [n] into k parts while Bell numbers counts all the possible partitions of [n]. In Sage these numbers can be retrieved with stirling_number2 and bell_number. To show these equalities we will count the elements ourselves.</span></p>"}︡
︠72c4ae21-b042-478a-a5cd-46d9e007604f︠
count = 0
A = SetPartitions(6,3)                                    #Partitions of [10] into 3 parts
g = A.first()
while(g):
    count+=1
    g = A.next(g)
print(stirling_number2(6,3) == count)

count = 0
B = SetPartitions(6)                                      #Partitions of [10]
g = B.first()
while(g):
    count+=1
    g = B.next(g)                                     
print(bell_number(6) == count)
︡a88dedea-dfd8-4a2f-8e6b-d8efb3bf37e8︡{"stderr":"Error in lines 4-6\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/projects/d352876d-23fe-4bf5-ae4e-0b4a84aa6de2/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 3, in <module>\n  File \"/usr/local/sage/sage-6.2.rc0/local/lib/python2.7/site-packages/sage/categories/enumerated_sets.py\", line 305, in _next_from_iterator\n    return it.next()\nStopIteration\n"}︡
︠6207809b-a4e7-464f-9702-0e6ff9cb9d50︠
print(stirling_number2(6,3))
print(bell_number(6))
︡460f97d8-2670-4e9e-aa2a-c91ed0ba46c9︡{"stdout": "90\n203"}︡
︠f1dcf66b-964c-4674-9cd7-2854de4c84a5i︠
%html
<div id="cell_text_18" class="text_cell">
<p style="text-align: center;"><strong><span style="font-size: x-large;">Integer Partitions</span></strong></p>
<p style="text-align: left;"><span style="font-size: medium;">Partitioning an integer n is to find a list of positive integers so that their sum is n. For example [3,1] is a partition of 4 since 3+1=4 and so is [2,2]. The lists [3,1] and [1,3] are the same partitions and so the lists are are required to be in decreasing order so as to prevent multiples of the same partition. The <a href="http://www.sagemath.org/doc/reference/sage/combinat/partition.html">Partitions</a> class in Sage can easily handle our partitioning needs and it is more extensive then the SetPartitions class.<strong></strong></span><strong><span style="font-size: x-large;"><br style="font-size: medium;" /></span></strong></p>
</div>

︡35abbc86-02c2-480d-acf0-31ca0de8704a︡{"html": "<div id=\"cell_text_18\" class=\"text_cell\">\n<p style=\"text-align: center;\"><strong><span style=\"font-size: x-large;\">Integer Partitions</span></strong></p>\n<p style=\"text-align: left;\"><span style=\"font-size: medium;\">Partitioning an integer n is to find a list of positive integers so that their sum is n. For example [3,1] is a partition of 4 since 3+1=4 and so is [2,2]. The lists [3,1] and [1,3] are the same partitions and so the lists are are required to be in decreasing order so as to prevent multiples of the same partition. The <a href=\"http://www.sagemath.org/doc/reference/sage/combinat/partition.html\">Partitions</a> class in Sage can easily handle our partitioning needs and it is more extensive then the SetPartitions class.<strong></strong></span><strong><span style=\"font-size: x-large;\"><br style=\"font-size: medium;\" /></span></strong></p>\n</div>"}︡
︠21feda6f-c009-4dd8-b936-ad4660b90021︠
P = Partitions(4)
print(P.list())
print(P.cardinality())
print(P[0])
print(type(P))
print(type(P[0]))
︡2f9383db-29db-4802-a4be-115e4c39d751︡{"stdout": "[[4], [3, 1], [2, 2], [2, 1, 1], [1, 1, 1, 1]]\n5\n[4]\n<class 'sage.combinat.partition.Partitions_n'>\n<class 'sage.combinat.partition.Partition_class'>"}︡
︠d09b8c44-ca6c-47af-931b-034e8983ff38i︠
%html
<p><span id="cell_outer_19"><span style="font-size: medium;">If you want partitions of a specific length (the number of parts) you must do the following</span></span></p>

︡49a90381-345e-4d4c-82f0-ac2824cbb9b6︡{"html": "<p><span id=\"cell_outer_19\"><span style=\"font-size: medium;\">If you want partitions of a specific length (the number of parts) you must do the following</span></span></p>"}︡
︠eb01207f-c3e0-46ef-97bf-4c5ed9133a8a︠
print(Partitions(7,length = 3).list())
print(Partitions(7,length = 3).cardinality())
print(type(Partitions(7,length = 3)))
︡12e54713-de60-4e95-940a-ec8c4cf1c5ea︡{"stdout": "[[5, 1, 1], [4, 2, 1], [3, 3, 1], [3, 2, 2]]\n4\n<class 'sage.combinat.integer_list.IntegerListsLex'>"}︡
︠03a63eec-7d21-4e6e-a3c8-23fd6e1e6648︠
print(Partitions(7, min_length = 2).list(), "\n")               #Partitions of at least length 2
print(Partitions(7, max_length = 5).list(), "\n")              #Partitions of at most length 5
print(Partitions(7, min_length = 2, max_length = 5).list())      #Partitions with length between 2 and 5
︡ada04f49-3cd4-4c1f-8948-81cedd98631f︡{"stdout":"[[6, 1], [5, 2], [5, 1, 1], [4, 3], [4, 2, 1], [4, 1, 1, 1], [3, 3, 1], [3, 2, 2], [3, 2, 1, 1], [3, 1, 1, 1, 1], [2, 2, 2, 1], [2, 2, 1, 1, 1], [2, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] \n\n"}︡{"stdout":"[[7], [6, 1], [5, 2], [5, 1, 1], [4, 3], [4, 2, 1], [4, 1, 1, 1], [3, 3, 1], [3, 2, 2], [3, 2, 1, 1], [3, 1, 1, 1, 1], [2, 2, 2, 1], [2, 2, 1, 1, 1]] \n\n"}︡{"stdout":"[[6, 1], [5, 2], [5, 1, 1], [4, 3], [4, 2, 1], [4, 1, 1, 1], [3, 3, 1], [3, 2, 2], [3, 2, 1, 1], [3, 1, 1, 1, 1], [2, 2, 2, 1], [2, 2, 1, 1, 1]]\n"}︡
︠4ba9af87-1013-4209-9201-96abf535d5e8︠
print(Partitions(7, min_part= 2).list(), "\n")                #Partitions with parts of size at least 2
print(Partitions(7, max_part = 5).list(), "\n")               #Partitions with parts of size at most 5
print(Partitions(7, min_part = 2, max_part = 5).list())       #Partitions with parts of size between 2 and 5
︡0f640046-7f17-48fe-81b3-d5ef1a20b860︡{"stdout": "[[7], [5, 2], [4, 3], [3, 2, 2]] \n\n[[5, 2], [5, 1, 1], [4, 3], [4, 2, 1], [4, 1, 1, 1], [3, 3, 1], [3, 2, 2], [3, 2, 1, 1], [3, 1, 1, 1, 1], [2, 2, 2, 1], [2, 2, 1, 1, 1], [2, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] \n\n[[5, 2], [4, 3], [3, 2, 2]]"}︡
︠5101e1ba-8fac-4e6a-894d-b81fb67e478di︠
%html
<p><span id="cell_outer_22"><span style="font-size: medium;">If the ordering of the parts is important you can instead use OrderedPartitions(). The arguements however are different and you can only specify how many parts are in your partition, default being None.</span></span></p>

︡916ae403-bdea-4c04-acbe-077d16e20e2c︡{"html": "<p><span id=\"cell_outer_22\"><span style=\"font-size: medium;\">If the ordering of the parts is important you can instead use OrderedPartitions(). The arguements however are different and you can only specify how many parts are in your partition, default being None.</span></span></p>"}︡
︠3440bc25-01cc-403b-8296-102b85cbf99e︠
print(OrderedPartitions(5).list(), "\n")
print(OrderedPartitions(5,2).list())
︡cb241530-dadc-4aa9-81f6-f08c5d48fd71︡{"stdout": "[[5], [4, 1], [3, 2], [3, 1, 1], [2, 3], [2, 2, 1], [2, 1, 2], [2, 1, 1, 1], [1, 4], [1, 3, 1], [1, 2, 2], [1, 2, 1, 1], [1, 1, 3], [1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1, 1, 1]] \n\n[[4, 1], [3, 2], [2, 3], [1, 4]]"}︡
︠ae5734b2-8a43-4dd2-9040-bd75e48b6d16i︠
%html
<p><span id="cell_outer_23"><span style="font-size: medium;">There are otherways to specify how you wish to construct your partitions but I will not go over them. If you wish to work with a specific partition you can use the Partition(n) method where n is a list in decreasing order to create a Partition_Class object which also has many useful functions. A couple of them are the ferrers_diagram() and conjugate() methods. The Ferrers diagram for a partition is a diagram so that each part a<sub>i</sub> has a<sub>i</sub> boxes (or in Sage *&rsquo;s) in the ith row. The conjugate of a partition p is the partition whose Ferrer's diagram is the reflection across the diagnol of p's Ferrer's diagram. </span></span></p>

︡4311c581-ce8f-44d7-b814-21a0013c789c︡{"html": "<p><span id=\"cell_outer_23\"><span style=\"font-size: medium;\">There are otherways to specify how you wish to construct your partitions but I will not go over them. If you wish to work with a specific partition you can use the Partition(n) method where n is a list in decreasing order to create a Partition_Class object which also has many useful functions. A couple of them are the ferrers_diagram() and conjugate() methods. The Ferrers diagram for a partition is a diagram so that each part a<sub>i</sub> has a<sub>i</sub> boxes (or in Sage *&rsquo;s) in the ith row. The conjugate of a partition p is the partition whose Ferrer's diagram is the reflection across the diagnol of p's Ferrer's diagram. </span></span></p>"}︡
︠1eb6a406-f500-4f0b-81dc-4add53f90e9f︠
p = Partition([4,3,2])
print(p)
print(p.ferrers_diagram(), "\n")
print(p.conjugate())
print(p.conjugate().ferrers_diagram())
︡23d00f8c-0116-46e4-bae0-87af78829f80︡{"stdout": "[4, 3, 2]\n****\n***\n** \n\n[3, 3, 2, 1]\n***\n***\n**\n*"}︡
︠acb928d4-e6e8-467d-9257-c6f6e2c836aci︠
%html
<p><span id="cell_outer_26"><span style="font-size: medium;">It is important to note that ferrers_diagram.() returns a string containing new line chars.</span></span></p>

︡f3a424f0-e678-4884-841e-a7723a20b74e︡{"html": "<p><span id=\"cell_outer_26\"><span style=\"font-size: medium;\">It is important to note that ferrers_diagram.() returns a string containing new line chars.</span></span></p>"}︡
︠709589b4-fbbc-4b35-aeb8-9f4f360a2125︠
Partition([4,3,2]).ferrers_diagram()
︡742bf293-cf53-4164-a8b2-d713b44e5a27︡{"stdout":"'****\\n***\\n**'\n"}︡
︠c5814143-5731-43b3-b769-c8f67228474f︠
%html
<p style="text-align: center;"><strong><span style="font-size: x-large;">Integer Compositions</span></strong></p>
<p style="text-align: left;"><a href="http://www.sagemath.org/doc/reference/sage/combinat/composition.html"><span style="font-size: x-large;"><span style="font-size: medium;">Integer compositions</span></span><strong></strong></a> <span style="font-size: medium;">are very similar to integer partitions. A composition of n is a sequence of positive integers such that their sum is n and the ordering of the integers matter, so it is very much like the OrderedPartitions mentioned preiously. If there is one or more zero elements in the sequence then it is called a weak composition of n. Similarily as for partitions you can designate any constraints you wish in your compositions.</span></p>

︡06a6c047-2d23-4449-8119-bca9189dfdc3︡{"html": "<p style=\"text-align: center;\"><strong><span style=\"font-size: x-large;\">Integer Compositions</span></strong></p>\n<p style=\"text-align: left;\"><a href=\"http://www.sagemath.org/doc/reference/sage/combinat/composition.html\"><span style=\"font-size: x-large;\"><span style=\"font-size: medium;\">Integer compositions</span></span><strong></strong></a> <span style=\"font-size: medium;\">are very similar to integer partitions. A composition of n is a sequence of positive integers such that their sum is n and the ordering of the integers matter, so it is very much like the OrderedPartitions mentioned preiously. If there is one or more zero elements in the sequence then it is called a weak composition of n. Similarily as for partitions you can designate any constraints you wish in your compositions.</span></p>"}︡
︠28106f0d-6554-45fd-8fa0-269887933d94︠
c = Composition([1,3,2,1,5])
print(c)
print(type(c), "\n")
L = Compositions(5)
print(L.list())
print(L.cardinality())
print(type(L), "\n")
M = Compositions(5,length=2)
print(M.list())
print(M.cardinality())
print(type(M))
︡258d0d0b-a73d-4864-8ae1-dc2bd03c5ce2︡{"stdout":"[1, 3, 2, 1, 5]\n"}︡{"stdout":"<class 'sage.combinat.composition.Compositions_all_with_category.element_class'> \n\n"}︡{"stdout":"[[1, 1, 1, 1, 1], [1, 1, 1, 2], [1, 1, 2, 1], [1, 1, 3], [1, 2, 1, 1], [1, 2, 2], [1, 3, 1], [1, 4], [2, 1, 1, 1], [2, 1, 2], [2, 2, 1], [2, 3], [3, 1, 1], [3, 2], [4, 1], [5]]\n"}︡{"stdout":"16\n"}︡{"stdout":"<class 'sage.combinat.composition.Compositions_n_with_category'> \n\n"}︡{"stdout":"[[4, 1], [3, 2], [2, 3], [1, 4]]\n"}︡{"stdout":"4\n"}︡{"stdout":"<class 'sage.combinat.integer_list.IntegerListsLex_with_category'>\n"}︡
︠1e65da50-31c6-45c9-91d2-e58b4b4ecff8︠
print(Compositions(5, min_length=2).list(), "\n")
print(Compositions(5, max_length=2).list())
︡24c4fbf9-2f6b-4d89-b32a-6ee42f34f75d︡{"stdout": "[[4, 1], [3, 2], [3, 1, 1], [2, 3], [2, 2, 1], [2, 1, 2], [2, 1, 1, 1], [1, 4], [1, 3, 1], [1, 2, 2], [1, 2, 1, 1], [1, 1, 3], [1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1, 1, 1]] \n\n[[5], [4, 1], [3, 2], [2, 3], [1, 4]]\n__SAGE__\nKeyboardInterrupt\n__SAGE__"}︡
︠132a0061-77f1-42cc-be6a-0809c092ec02i︠
%html
<p><span id="cell_outer_31"><span style="font-size: medium;">The number of compositions of n into k non-empty parts is binomial(n-1,k-1) and the total number of compositions is 2<sup>n-1 </sup>, which can be proven easily by taking the summation of binomial(n-1,k-1) from k=1 to k=n and using binomial coefficient identities.</span></span></p>

︡7fe47df7-cbe6-4f7a-b50e-16685deabb7f︡{"html": "<p><span id=\"cell_outer_31\"><span style=\"font-size: medium;\">The number of compositions of n into k non-empty parts is binomial(n-1,k-1) and the total number of compositions is 2<sup>n-1 </sup>, which can be proven easily by taking the summation of binomial(n-1,k-1) from k=1 to k=n and using binomial coefficient identities.</span></span></p>"}︡
︠228bcef9-60f9-47dc-9875-9e5bce2161ec︠
print(Compositions(10, length = 5).cardinality() == binomial(10-1,5-1))
print(Compositions(10).cardinality() == 2^(10-1))
︡a83a24a5-f7ed-456a-ad91-a3e141892d76︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡
︠41bbe6c6-b321-46c5-9161-f37f9b424af5︠
Symmetric Functions

Symmetric functions are polynomials or power series of bounded degree which are invariant under any ttransposition of variables.  Sage is very helpful when converting from one basis to another, finding  transtion mmatrices, computing inner products, Hopf algebra constructions like the antipode, etc.   
http://www.sagemath.org/doc/reference/combinat/sage/combinat/sf/sfa.html

︡9ca2d3d8-e109-4d56-82eb-5468700b75e9︡
︠84a2e736-ee77-41e9-a7e6-023aad54c03b︠
Symmetric Functions
︡70d72f99-47bd-4387-951e-78060dfb4b07︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/d352876d-23fe-4bf5-ae4e-0b4a84aa6de2/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"<string>\", line 1\n    Symmetric Functions\n                      ^\nSyntaxError: invalid syntax\n"}︡
︠11255019-8026-40c6-aaf1-b27a311216c9︠

Sym = SymmetricFunctions(QQ)
s = Sym.schur()
e = Sym.elementary()
h = Sym.complete()
︡941c8790-24f1-4a7d-b722-5968132adfbe︡
︠2980288a-11df-4425-a6a3-a35a94b77bf4︠

︠4b04eda7-eb42-4e3d-a28e-649ee668d6c9︠









