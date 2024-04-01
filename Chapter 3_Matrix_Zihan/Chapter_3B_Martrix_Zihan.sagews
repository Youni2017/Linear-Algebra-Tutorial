︠82f18c2f-34eb-42f8-8efb-d8e3ba3d7435i︠
%html
<h2 style="text-align: center;">Welcome to Chapter 3: The Paradise of <i>Matrices</i></h2>
<p style="text-align: center;" >Originally created by $Zihan Chen$ | $zchen84@uw.edu$ </p>
<h5><strong>Preface:</strong></h5>
<p>This <strong>Sage Worksheet</strong> is a part of a $Linear$ $Algebra$ tutorial created by Prof.$Sara$ $Billey$'s 2024 <i>WXML</i> group. Referred to $Linear$ $Algebra$ $with$ $Applications$ $by$ $Holt$, $2^{nd}$ $edition$, this Worksheet is intended to help future $UW$ $Math208$ students with some tools and software to present more visual linear algebra content. This Worksheet will revolve around $Section$ $3.2-3.5$ of $Holt$'s Book.</p>

<h5>$3.2/3.3-Matrix$ $Computations$ </h5>
<p>Next, let's take a look at matrix computations, which I believe are crucial in linear algebra. First, we'll explore matrix addition and subtraction.</p>

<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>Text Box Example</title>
<style>
    .text-box {
        border: 1px solid #000;
        padding: 10px;
        margin: 10px 0;
        width: fit-content;
        display: inline-block;
        background-color: #f0f0f0;
    }
</style>
</head>
<body>

<div class="text-box">
    <p>$Example7$ Suppose we have matrices \( D = \begin{bmatrix} 4 & -1 \\ 2 & -3 \\ 7 & 0 \end{bmatrix} \) and \( E = \begin{bmatrix} 3 & -1 \\ 5 & 0 \\ 0 & 2 \end{bmatrix} \). We want to calculate \( 3D \) and \( D - 2E \). </p>
    </div>
<p>Implementing this in Sage is quite straightforward, as follows:</p>

<p>To begin with, let's consider the computation of $2E$. Actually, it's the same as multiply scalar $2$ in every entries in matrix $E$ . We will computer $2E$ by using sage as below.</p>

︡3bc5c9fe-b64d-43b1-aabb-9cecc44ab006︡{"done":true,"html":"<h2 style=\"text-align: center;\">Welcome to Chapter 3: The Paradise of <i>Matrices</i></h2>\n<p style=\"text-align: center;\" >Originally created by $Zihan Chen$ | $zchen84@uw.edu$ </p>\n<h5><strong>Preface:</strong></h5>\n<p>This <strong>Sage Worksheet</strong> is a part of a $Linear$ $Algebra$ tutorial created by Prof.$Sara$ $Billey$'s 2024 <i>WXML</i> group. Referred to $Linear$ $Algebra$ $with$ $Applications$ $by$ $Holt$, $2^{nd}$ $edition$, this Worksheet is intended to help future $UW$ $Math208$ students with some tools and software to present more visual linear algebra content. This Worksheet will revolve around $Section$ $3.2-3.5$ of $Holt$'s Book.</p>\n\n<h5>$3.2/3.3-Matrix$ $Computations$ </h5>\n<p>Next, let's take a look at matrix computations, which I believe are crucial in linear algebra. First, we'll explore matrix addition and subtraction.</p>\n\n<html lang=\"zh-CN\">\n<head>\n<meta charset=\"UTF-8\">\n<title>Text Box Example</title>\n<style>\n    .text-box {\n        border: 1px solid #000;\n        padding: 10px;\n        margin: 10px 0;\n        width: fit-content;\n        display: inline-block;\n        background-color: #f0f0f0;\n    }\n</style>\n</head>\n<body>\n\n<div class=\"text-box\">\n    <p>$Example7$ Suppose we have matrices \\( D = \\begin{bmatrix} 4 & -1 \\\\ 2 & -3 \\\\ 7 & 0 \\end{bmatrix} \\) and \\( E = \\begin{bmatrix} 3 & -1 \\\\ 5 & 0 \\\\ 0 & 2 \\end{bmatrix} \\). We want to calculate \\( 3D \\) and \\( D - 2E \\). </p>\n    </div>\n<p>Implementing this in Sage is quite straightforward, as follows:</p>\n\n<p>To begin with, let's consider the computation of $2E$. Actually, it's the same as multiply scalar $2$ in every entries in matrix $E$ . We will computer $2E$ by using sage as below.</p>"}
︠39bb15ae-c1b7-4cb5-8b72-effec25651d3s︠
D=matrix([[4,-1],[2,-3],[7,0]])
E=matrix([[3,-1],[5,0],[0,2]])
print("3*D is")
3*D
print("2*E is")
2*E
print("D-2*E is")
D-2*E
print("D+E is")
D+E
︡15c90484-9631-4116-9161-fffea7fb7404︡{"stdout":"3*D is\n"}︡{"stdout":"[12 -3]\n[ 6 -9]\n[21  0]\n"}︡{"stdout":"2*E is\n"}︡{"stdout":"[ 6 -2]\n[10  0]\n[ 0  4]\n"}︡{"stdout":"D-2*E is\n"}︡{"stdout":"[-2  1]\n[-8 -3]\n[ 7 -4]\n"}︡{"stdout":"D+E is\n"}︡{"stdout":"[ 7 -2]\n[ 7 -3]\n[ 7  2]\n"}︡{"done":true}
︠14576781-ca73-4a18-a33d-e592ef0e6abei︠
%html
<p>In the last line, I also calculated \( D + E \). When we see \( D + E \), we should consider whether the result of \( D + E \) is the same as that of \( E + D \). Let's give it a try.</p>
︡f818d8ca-b6e9-44c3-8f98-898b950fcc03︡{"done":true,"html":"<p>In the last line, I also calculated \\( D + E \\). When we see \\( D + E \\), we should consider whether the result of \\( D + E \\) is the same as that of \\( E + D \\). Let's give it a try.</p>"}
︠b3719501-33da-46a4-a4a8-7b767806313fs︠
print("E+D is")
E+D
︡4ebc5a74-4372-4be5-aa76-52776db50d86︡{"stdout":"E+D is\n"}︡{"stdout":"[ 7 -2]\n[ 7 -3]\n[ 7  2]\n"}︡{"done":true}
︠57d23907-23e6-4bea-92e8-42e3b3c43bb9i︠
%html
<p>The results are the same. For three matrices, does addition follow the commutative law? I encourage you to check this conclusion yourself, and you should find that it is correct. Next, let's take a look at matrix multiplication. I won't go into the specific steps of multiplication, as you can learn about them from reading relevant materials. What I want you to check now is whether matrix multiplication follows the commutative law. </p>

<div class="text-box">
<p>$Example8$ Suppose we have two matrices \( F = \begin{bmatrix} 3 & 1 \\ -2 & 0 \end{bmatrix} \) and \( G = \begin{bmatrix} -1 & 0 & 2 \\ 4 & -3 & -1 \end{bmatrix} \). Let's calculate \( FG \) and \( GF \) to see if the results of these two are the same.</p>
</div>
︡bd1e4e04-2830-4639-80ff-5805e8e73c4d︡{"done":true,"html":"<p>The results are the same. For three matrices, does addition follow the commutative law? I encourage you to check this conclusion yourself, and you should find that it is correct. Next, let's take a look at matrix multiplication. I won't go into the specific steps of multiplication, as you can learn about them from reading relevant materials. What I want you to check now is whether matrix multiplication follows the commutative law. </p>\n\n<div class=\"text-box\">\n<p>$Example8$ Suppose we have two matrices \\( F = \\begin{bmatrix} 3 & 1 \\\\ -2 & 0 \\end{bmatrix} \\) and \\( G = \\begin{bmatrix} -1 & 0 & 2 \\\\ 4 & -3 & -1 \\end{bmatrix} \\). Let's calculate \\( FG \\) and \\( GF \\) to see if the results of these two are the same.</p>\n</div>"}
︠3360cc0a-ddda-4cc3-9a7f-84e7a6b07c19s︠
F=matrix([[3,1],[-2,0]])
G=matrix([[-1,0,2],[4,-3,-1]])
print("F*G is")
F*G
print("G*F is")
G*F
︡478871fc-4447-4d51-9116-ea0589f64695︡{"stdout":"F*G is\n"}︡{"stdout":"[ 1 -3  5]\n[ 2  0 -4]\n"}︡{"stdout":"G*F is\n"}︡{"stderr":"Error in lines 6-6\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/structure/element.pyx\", line 4099, in sage.structure.element.Matrix.__mul__\n    return coercion_model.bin_op(left, right, mul)\n  File \"sage/structure/coerce.pyx\", line 1276, in sage.structure.coerce.CoercionModel.bin_op\n    raise bin_op_exception(op, x, y)\nTypeError: unsupported operand parent(s) for *: 'Full MatrixSpace of 2 by 3 dense matrices over Integer Ring' and 'Full MatrixSpace of 2 by 2 dense matrices over Integer Ring'\n"}︡{"done":true}
︠614a4d88-0006-4a87-b6bb-f246aebe41fdi︠
%html
<p>We observe that the result of \( G \times F \) cannot be produced, while \( F \times G \) yields a result. Does this, to some extent, explain why \( F \times G \) is not equal to \( G \times F \)? This serves as a reminder that in the matrix multiplication of \( F \times G \), the number of columns in matrix \( F \) must be the same as the number of rows in matrix \( G \) for the computation to be possible. Using this reminder, let's try to see if the multiplication of $n×n$ matrices follows the commutative law. We'll set \( H = \begin{bmatrix} 2 & -1 \\ 1 & 3 \end{bmatrix} \) and \( J = \begin{bmatrix} 4 & -2 \\ -1 & 1 \end{bmatrix} \) as $Example8$.</p>
︡6534ced2-af29-4022-9082-b2bf576067b9︡{"done":true,"html":"<p>We observe that the result of \\( G \\times F \\) cannot be produced, while \\( F \\times G \\) yields a result. Does this, to some extent, explain why \\( F \\times G \\) is not equal to \\( G \\times F \\)? This serves as a reminder that in the matrix multiplication of \\( F \\times G \\), the number of columns in matrix \\( F \\) must be the same as the number of rows in matrix \\( G \\) for the computation to be possible. Using this reminder, let's try to see if the multiplication of $n×n$ matrices follows the commutative law. We'll set \\( H = \\begin{bmatrix} 2 & -1 \\\\ 1 & 3 \\end{bmatrix} \\) and \\( J = \\begin{bmatrix} 4 & -2 \\\\ -1 & 1 \\end{bmatrix} \\) as $Example8$.</p>"}
︠e87d6140-6d0f-403c-acdc-dd56eb6667a7si︠
H=matrix(2,2,[2,-1,1,3])
J=matrix(2,2,[4,-2,-1,1])
print("H*J is")
H*J
print("J*H is")
J*H
︡77ded7ac-0f05-4714-9964-2dc997b0c389︡{"stdout":"H*J is\n"}︡{"stdout":"[ 9 -5]\n[ 1  1]\n"}︡{"stdout":"J*H is\n"}︡{"stdout":"[  6 -10]\n[ -1   4]\n"}︡{"done":true}
︠a3199a4e-3c57-4fbc-8f7d-7cb8d2018bc5i︠
%html
<p>Now, I think we can summarize our conclusion that matrix multiplication does not follow the commutative law. Similarly, we are curious about other properties like the associative law and distributive law, and we can also perform self-checks for these. Here, I'll use the distributive law as an example.</p>

<div class="text-box">
    <p>$Example9$ Suppose we have three matrices $A_1, A_2, A_3$, where \( A_1 = \begin{bmatrix} 2 & -3 \\ 1 & 5 \end{bmatrix} \), \( A_2 = \begin{bmatrix} 0 & 7 \\ 4 & -2 \end{bmatrix} \), and \( A_3 = \begin{bmatrix} -3 & -4 \\ 0 & -1 \end{bmatrix} \). Let's check if \( (A_1 + A_2) \times A_3 = A_1 \times A_3 + A_2 \times A_3 \) holds true.</p>
</div>
︡210eb3b4-3b29-454b-8430-7a1bb846fab9︡{"done":true,"html":"<p>Now, I think we can summarize our conclusion that matrix multiplication does not follow the commutative law. Similarly, we are curious about other properties like the associative law and distributive law, and we can also perform self-checks for these. Here, I'll use the distributive law as an example.</p>\n\n<div class=\"text-box\">\n    <p>$Example9$ Suppose we have three matrices $A_1, A_2, A_3$, where \\( A_1 = \\begin{bmatrix} 2 & -3 \\\\ 1 & 5 \\end{bmatrix} \\), \\( A_2 = \\begin{bmatrix} 0 & 7 \\\\ 4 & -2 \\end{bmatrix} \\), and \\( A_3 = \\begin{bmatrix} -3 & -4 \\\\ 0 & -1 \\end{bmatrix} \\). Let's check if \\( (A_1 + A_2) \\times A_3 = A_1 \\times A_3 + A_2 \\times A_3 \\) holds true.</p>\n</div>"}
︠33a07505-6426-416f-a87c-9063d82d997es︠
A1=matrix([[2,-3],[1,5]])
A2=matrix([[0,7],[4,-2]])
A3=matrix([[-3,-4],[0,-1]])
print("(A1+A2)*A3 is")
(A1+A2)*A3
print("A1*A3+A2*A3 is")
A1*A3+A2*A3
︡fce2ed1f-b158-40db-bf85-3f4858d45c3c︡{"stdout":"(A1+A2)*A3 is\n"}︡{"stdout":"[ -6 -12]\n[-15 -23]\n"}︡{"stdout":"A1*A3+A2*A3 is\n"}︡{"stdout":"[ -6 -12]\n[-15 -23]\n"}︡{"done":true}
︠59bb84e9-3290-4223-8bdb-a017b80830a7i︠
%html
<p>I think we have concluded on our own that matrix multiplication does comply with the distributive law. Let's continue to explore another important matrix operation: $transpose$. The main idea of transpose is to switch coordinates. If we have a matrix \( A = \begin{bmatrix} A & B \\ C & D \end{bmatrix} \), then \( A^T \) would be \( \begin{bmatrix} A & C \\ B & D \end{bmatrix} \). I'm sure you, being clever, have already spotted the pattern. Can you summarize it? For example, if the coordinates in \( A \) are \( \begin{bmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{bmatrix} \), what would the corresponding coordinates in \( A^T \) be? Let's find the answer through an example.</p>
<div class="text-box">
    <p>$Example10$ Suppose we have a matrix \( K = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{bmatrix} \), what should \( K^T \) be? We can still implement this through Sage.</p>
</div>
︡5c0661e1-a18e-40e6-85e2-12efb143b931︡{"done":true,"html":"<p>I think we have concluded on our own that matrix multiplication does comply with the distributive law. Let's continue to explore another important matrix operation: $transpose$. The main idea of transpose is to switch coordinates. If we have a matrix \\( A = \\begin{bmatrix} A & B \\\\ C & D \\end{bmatrix} \\), then \\( A^T \\) would be \\( \\begin{bmatrix} A & C \\\\ B & D \\end{bmatrix} \\). I'm sure you, being clever, have already spotted the pattern. Can you summarize it? For example, if the coordinates in \\( A \\) are \\( \\begin{bmatrix} a_{11} & a_{12} \\\\ a_{21} & a_{22} \\end{bmatrix} \\), what would the corresponding coordinates in \\( A^T \\) be? Let's find the answer through an example.</p>\n<div class=\"text-box\">\n    <p>$Example10$ Suppose we have a matrix \\( K = \\begin{bmatrix} 1 & 2 & 3 \\\\ 4 & 5 & 6 \\\\ 7 & 8 & 9 \\end{bmatrix} \\), what should \\( K^T \\) be? We can still implement this through Sage.</p>\n</div>"}
︠b6944243-f6db-413f-a80a-9faa3cf6e945s︠
K=matrix([[1,2,3],[4,5,6],[7,8,9]])
print("K is")
K
print("K^T is")
K.transpose()
#or we can use K.T
︡a725f223-1833-4296-9ab7-c08e2aefc48f︡{"stdout":"K is\n"}︡{"stdout":"[1 2 3]\n[4 5 6]\n[7 8 9]\n"}︡{"stdout":"K^T is\n"}︡{"stdout":"[1 4 7]\n[2 5 8]\n[3 6 9]\n"}︡{"done":true}
︠98a85411-8f33-4fad-924f-0f54a4b99ba0i︠
%html
<p>Matrix transpose also satisfies many properties. For example, \( (A + B)^T = A^T + B^T \) and \( (AB)^T = B^T A^T \). We will use the following example to demonstrate the latter conclusion.</p>
<div class="text-box">
<p>$Example11$ Let's calculate \( (L_1 \cdot L_2)^T \) and \( L_2^T \cdot L_1^T \) for the given vectors: \( L_1 = \begin{bmatrix} 1 & -2 & 0 \\ 3 & 1 & -4 \end{bmatrix} \)，\( L_2 = \begin{bmatrix} 5 & 0 \\ -1 & 2 \\ 0 &  3 \end{bmatrix} \)</p>
</div>

︡90db8a00-f12d-4e39-bb47-b6ba0332a825︡{"done":true,"html":"<p>Matrix transpose also satisfies many properties. For example, \\( (A + B)^T = A^T + B^T \\) and \\( (AB)^T = B^T A^T \\). We will use the following example to demonstrate the latter conclusion.</p>\n<div class=\"text-box\">\n<p>$Example11$ Let's calculate \\( (L_1 \\cdot L_2)^T \\) and \\( L_2^T \\cdot L_1^T \\) for the given vectors: \\( L_1 = \\begin{bmatrix} 1 & -2 & 0 \\\\ 3 & 1 & -4 \\end{bmatrix} \\)，\\( L_2 = \\begin{bmatrix} 5 & 0 \\\\ -1 & 2 \\\\ 0 &  3 \\end{bmatrix} \\)</p>\n</div>"}
︠fed8bfd7-e13a-433e-a267-54eabaae37d0s︠
L1=matrix([[1,-2,0],[3,1,-4]])
L2=matrix([[5,0],[-1,2],[0,3]])
print("L1 is")
L1
print("L2 is")
L2
print("(L1*L2)^T is")
(L1*L2).transpose()
print("(L2^T)*(L1^T) is")
L2.transpose() * L1.transpose()
︡606aeedd-a42b-4e64-ae86-3b9a29ac19d5︡{"stdout":"L1 is\n"}︡{"stdout":"[ 1 -2  0]\n[ 3  1 -4]\n"}︡{"stdout":"L2 is\n"}︡{"stdout":"[ 5  0]\n[-1  2]\n[ 0  3]\n"}︡{"stdout":"(L1*L2)^T is\n"}︡{"stdout":"[  7  14]\n[ -4 -10]\n"}︡{"stdout":"(L2^T)*(L1^T) is\n"}︡{"stdout":"[  7  14]\n[ -4 -10]\n"}︡{"done":true}
︠e7407e3b-7074-44af-ab09-e69d667fb737i︠
%html
<p>Here, I'd like to pose an open question. Do you know how to calculate the power of a matrix? Is matrix power simply raising each entry of the matrix to the corresponding power? In fact, this conclusion holds true for diagonal matrices, but not for non-diagonal matrices. However, don't worry, at this stage, we won't be calculating very high powers of matrices. If we encounter something like \(A^2\), we can simply compute \(A \cdot A\) instead. The specifics of calculating high powers of matrices will be covered in Chapter $6$ on $diagonalization$.</p>
︡f6318522-b397-42c8-8168-3a17146c0973︡{"done":true,"html":"<p>Here, I'd like to pose an open question. Do you know how to calculate the power of a matrix? Is matrix power simply raising each entry of the matrix to the corresponding power? In fact, this conclusion holds true for diagonal matrices, but not for non-diagonal matrices. However, don't worry, at this stage, we won't be calculating very high powers of matrices. If we encounter something like \\(A^2\\), we can simply compute \\(A \\cdot A\\) instead. The specifics of calculating high powers of matrices will be covered in Chapter $6$ on $diagonalization$.</p>"}
︠ebaa0e6c-69b1-4717-82fa-aadaedb807b9i︠
%html
<p>I'd like to include the concept of $inverses$ in the matrix calculations discussed in section 3.2 because finding the inverse of a matrix is also a matrix operation. Let's consider a $2×2$ matrix $A$:</p>
<p>\[ A = \begin{bmatrix} a & b \\ c & d \end{bmatrix} \]</p>
<p>We have a handy formula to find the inverse of this matrix:</p>
<p>\[ A^{-1} = \frac{1}{{ad - bc}} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix} \]</p>
<p>However, for matrices larger than $2×2$, there are methods to find the inverse, but it's often efficient to compute the inverse of a matrix using SageMath.
<div class="text-box">
    <p>$Example12$ Let's take an example with a matrix $M$: \[ M = \begin{bmatrix} 1 & 2 & -1 \\ 2 & 5 & -1 \\ 1 & 2 & 0 \end{bmatrix} \]
    We will now find its inverse and verify our result by checking if \( MM^{-1} = I \).</p>
</div>

︡703744b7-86b0-434d-baea-3aa79ccf7965︡{"done":true,"html":"<p>I'd like to include the concept of $inverses$ in the matrix calculations discussed in section 3.2 because finding the inverse of a matrix is also a matrix operation. Let's consider a $2×2$ matrix $A$:</p>\n<p>\\[ A = \\begin{bmatrix} a & b \\\\ c & d \\end{bmatrix} \\]</p>\n<p>We have a handy formula to find the inverse of this matrix:</p>\n<p>\\[ A^{-1} = \\frac{1}{{ad - bc}} \\begin{bmatrix} d & -b \\\\ -c & a \\end{bmatrix} \\]</p>\n<p>However, for matrices larger than $2×2$, there are methods to find the inverse, but it's often efficient to compute the inverse of a matrix using SageMath.\n<div class=\"text-box\">\n    <p>$Example12$ Let's take an example with a matrix $M$: \\[ M = \\begin{bmatrix} 1 & 2 & -1 \\\\ 2 & 5 & -1 \\\\ 1 & 2 & 0 \\end{bmatrix} \\]\n    We will now find its inverse and verify our result by checking if \\( MM^{-1} = I \\).</p>\n</div>"}
︠e7c3220c-3cc5-4f88-88bf-49ceb59f9f33s︠
M=matrix([[1,2,-1],[2,5,-1],[1,2,0]])
M_inv=M.inverse()
print ("M inverse is")
print (M_inv)
print ("Check M*M_inv")
print (M*M_inv)
︡2fa8c2a0-06ad-417c-a467-dba604a6b47f︡{"stdout":"M inverse is\n"}︡{"stdout":"[ 2 -2  3]\n[-1  1 -1]\n[-1  0  1]\n"}︡{"stdout":"Check M*M_inv\n"}︡{"stdout":"[1 0 0]\n[0 1 0]\n[0 0 1]\n"}︡{"done":true}
︠7052da96-cb6e-4189-ab0b-5db76971ac1di︠
%html
<p>So what we've found is the inverse of matrix $A$. Of course, we won't stop here; knowledge of inverse matrices is not only applicable in this chapter but also comes into play in section $4.4$, "$Change$ $of$ $Basis$," particularly in the operations mentioned below:</p>
<div class="text-box">
<ol>
    <li>\((A^{-1})^{-1} = A\)</li>
    <li>\((AB)^{-1} = B^{-1}A^{-1}\)</li>
</ol>
</div>
<p>Let's explore the second operation through a simple example.</p>

<div class="text-box">
    <p>$Example13$ Let's calculate \((NO)^{-1}\)  and  \(O^{-1}N^{-1}\).</p>
\[N = \begin{bmatrix} 1 & 2 & -1 \\ 2 & 5 & -1 \\ 1 & 2 & 0 \end{bmatrix}, O = \begin{bmatrix} 2 & 3 & 1 \\ 4 & 6 & -1 \\ 4 & 2 & 0 \end{bmatrix}\]
</div>
︡71e1d364-739e-4515-9b21-613e0122531a︡{"done":true,"html":"<p>So what we've found is the inverse of matrix $A$. Of course, we won't stop here; knowledge of inverse matrices is not only applicable in this chapter but also comes into play in section $4.4$, \"$Change$ $of$ $Basis$,\" particularly in the operations mentioned below:</p>\n<div class=\"text-box\">\n<ol>\n    <li>\\((A^{-1})^{-1} = A\\)</li>\n    <li>\\((AB)^{-1} = B^{-1}A^{-1}\\)</li>\n</ol>\n</div>\n<p>Let's explore the second operation through a simple example.</p>\n\n<div class=\"text-box\">\n    <p>$Example13$ Let's calculate \\((NO)^{-1}\\)  and  \\(O^{-1}N^{-1}\\).</p>\n\\[N = \\begin{bmatrix} 1 & 2 & -1 \\\\ 2 & 5 & -1 \\\\ 1 & 2 & 0 \\end{bmatrix}, O = \\begin{bmatrix} 2 & 3 & 1 \\\\ 4 & 6 & -1 \\\\ 4 & 2 & 0 \\end{bmatrix}\\]\n</div>"}
︠96580807-0a29-4e9f-be27-8a4fba377471s︠
N=matrix([[1,2,-1],[2,5,-1],[1,2,0]])
O=matrix([[2,3,1],[4,6,-1],[4,2,0]])
print ("N*O's inverse is")
print((N*O).inverse())
N_2=N.inverse()
O_2=O.inverse()
print ("Ainverse *Binverse is")
print(O_2*N_2)
︡5711865d-2b6e-439f-87f8-ad9d7e02a761︡{"stdout":"N*O's inverse is\n"}︡{"stdout":"[-11/24   1/12   5/24]\n[  5/12   -1/6   1/12]\n[   5/3   -5/3    7/3]\n"}︡{"stdout":"Ainverse *Binverse is\n"}︡{"stdout":"[-11/24   1/12   5/24]\n[  5/12   -1/6   1/12]\n[   5/3   -5/3    7/3]\n"}︡{"done":true}
︠9fff049c-db7b-4de4-9c17-4c4025022dd0i︠
%html
<p>We can observe that they are the same. How can you remember this formula, and why is it to first find the inverse of $B$ and then multiply it by the inverse of $A$? Let's think about a process: when you define $A$ as putting on your socks and $B$ as putting on your shoes, when we want to undo these steps, you should first take off your shoes, and then take off your socks. In other words, \((AB)^{-1} = B^{-1}  A^{-1}\).</p>
︡61c00b45-e2f8-45d1-8775-efe9c699e7f5︡{"done":true,"html":"<p>We can observe that they are the same. How can you remember this formula, and why is it to first find the inverse of $B$ and then multiply it by the inverse of $A$? Let's think about a process: when you define $A$ as putting on your socks and $B$ as putting on your shoes, when we want to undo these steps, you should first take off your shoes, and then take off your socks. In other words, \\((AB)^{-1} = B^{-1}  A^{-1}\\).</p>"}
︠3d460c98-7b00-4a71-8289-2cdc2743e815i︠
%html
<h5>$3.5^*-$$Markov$ $Chains$ </h5>
<p>What is a Markov matrix? I believe the most important thing is that it satisfies two conditions. The first is that the matrix is non-negative, which means that every entry \(a_{ij}\) in the Markov matrix should be greater than or equal to $0$. Another important property of a Markov matrix is that the sum of each of its columns is equal to $1$. A Markov matrix is a fascinating matrix, and I'll do my best to introduce you to some Markov matrices that I know.</p>

<p>First, we can generate matrices that satisfy the above properties randomly. Each run will produce a different matrix because it's a random process.</p>

︡a975018c-20a7-4782-badf-c54809139c90︡{"done":true,"html":"<h5>$3.5^*-$$Markov$ $Chains$ </h5>\n<p>What is a Markov matrix? I believe the most important thing is that it satisfies two conditions. The first is that the matrix is non-negative, which means that every entry \\(a_{ij}\\) in the Markov matrix should be greater than or equal to $0$. Another important property of a Markov matrix is that the sum of each of its columns is equal to $1$. A Markov matrix is a fascinating matrix, and I'll do my best to introduce you to some Markov matrices that I know.</p>\n\n<p>First, we can generate matrices that satisfy the above properties randomly. Each run will produce a different matrix because it's a random process.</p>"}
︠656cbbc1-a28f-441f-84e9-4f02bfbd835f︠

# Define the size of the matrix
n = 3  # Size of the matrix

# Generate a random Markov matrix
markov_matrix = random_matrix(QQ, n, n)  # Using QQ to represent the rational number field

# Ensure that the generated matrix is a Markov matrix (the sum of elements in each column equals 1)
for j in range(n):
    col_sum = sum(markov_matrix[i, j] for i in range(n))
    markov_matrix[:, j] = markov_matrix[:, j] / col_sum

# Print the generated Markov matrix
print(markov_matrix)
︡ddbe3f88-580e-4892-9e3b-c27e9ad18e17︡{"stdout":"[1/2 1/5   2]\n[  0 4/5   0]\n[1/2   0  -1]\n"}︡{"done":true}
︠c652b1e5-4e27-4790-bcff-676e0bf487cci︠
%html
<p>Observe the randomly generated matrices above and determine whether each generation results in a Markov matrix. I would like to discuss a fascinating property of Markov matrices, which is that the product of two Markov matrices is still a Markov matrix. We will also verify this property using randomly generated matrices.</p>
︡ab1fb1b2-50ef-4f67-af52-7747f8e02faa︡{"done":true,"html":"<p>Observe the randomly generated matrices above and determine whether each generation results in a Markov matrix. I would like to discuss a fascinating property of Markov matrices, which is that the product of two Markov matrices is still a Markov matrix. We will also verify this property using randomly generated matrices.</p>"}
︠b5475de0-f60f-4147-8a8c-7467079344a0︠
 """
    This function is to define a random Markow matrix
  
 """
    # Define the size of the matrix
n = 3  # Matrix size

# Generate a random Markov matrix
markov_matrix = random_matrix(QQ, n, n)  # Using QQ to represent the rational number field

# Ensure that the generated matrix is a Markov matrix (the sum of elements in each column equals 1)
for j in range(n):
    col_sum = sum(markov_matrix[i, j] for i in range(n))
    markov_matrix[:, j] = markov_matrix[:, j] / col_sum

# Print the generated Markov matrix
print("testMarkow_1")
print(markov_matrix)
print("testMarkow_2")
print(markov_matrix*markov_matrix)
print("testMarkow_3")
print(markov_matrix*markov_matrix*markov_matrix)
print("testMarkow_4")
print(markov_matrix*markov_matrix*markov_matrix*markov_matrix)
︡b3eaf68f-9d4b-4361-a350-daba48ad0d9c︡{"stdout":"testMarkow_1\n"}︡{"stdout":"[1/2   1 2/5]\n[  0   0 1/5]\n[1/2   0 2/5]\n"}︡{"stdout":"testMarkow_2\n"}︡{"stdout":"[ 9/20   1/2 14/25]\n[ 1/10     0  2/25]\n[ 9/20   1/2  9/25]\n"}︡{"stdout":"testMarkow_3\n"}︡{"stdout":"[101/200    9/20  63/125]\n[  9/100    1/10   9/125]\n[ 81/200    9/20  53/125]\n"}︡{"stdout":"testMarkow_4\n"}︡{"stdout":"[1009/2000   101/200  617/1250]\n[  81/1000     9/100    53/625]\n[ 829/2000    81/200  527/1250]\n"}︡{"done":true}
︠c49979b0-1c55-4401-a6c8-7cf388b65c40i︠
%html
<p>We have observed through the multiplication of multiple random matrices that Markov matrices do indeed exhibit this characteristic. Can you think of why? (Hint: You can try using the row vector \(1^T\) multiplied on the far left.) For Markov matrices, what we are most concerned with is their contribution to studying long-term behavior. Let's look at a specific example below.</p>
︡6f6ba268-7cfb-4e5d-954a-fd8419d0944a︡{"done":true,"html":"<p>We have observed through the multiplication of multiple random matrices that Markov matrices do indeed exhibit this characteristic. Can you think of why? (Hint: You can try using the row vector \\(1^T\\) multiplied on the far left.) For Markov matrices, what we are most concerned with is their contribution to studying long-term behavior. Let's look at a specific example below.</p>"}
︠ddccfff4-e2f9-4be8-bcbf-7c07a00d2bb2s︠
G=matrix(3,3,[0,0,2/3,1,0,0,0,1,1/3])
G
print("All eigenvectors are")
print(G.eigenvalues())
print("All eigenvectors are")
print(G.right_eigenvectors())
︡a07e3375-8b19-4e37-a26b-60c83fa4dfc4︡{"stdout":"[  0   0 2/3]\n[  1   0   0]\n[  0   1 1/3]\n"}︡{"stdout":"All eigenvectors are\n"}︡{"stdout":"[1, -0.3333333333333334? - 0.745355992499930?*I, -0.3333333333333334? + 0.745355992499930?*I]"}︡{"stdout":"\n"}︡{"stdout":"All eigenvectors are\n"}︡{"stdout":"[(1, [\n(1, 1, 3/2)\n], 1), (-0.3333333333333334? - 0.745355992499930?*I, [(1, -0.500000000000000? + 1.118033988749895?*I, -0.500000000000000? - 1.118033988749895?*I)], 1), (-0.3333333333333334? + 0.745355992499930?*I, [(1, -0.500000000000000? - 1.118033988749895?*I, -0.500000000000000? + 1.118033988749895?*I)], 1)]"}︡{"stdout":"\n"}︡{"done":true}
︠ec618f93-5e78-41e8-8c0f-b5c90279f366i︠
%html
<p>By observing the eigenvalues we have outputted, we can see that the absolute values of the other two eigenvalues are all within \(|1|\), meaning that the absolute values of the other eigenvalues do not exceed \(1\). Another thing we can observe is that only the dominant eigenvector is a non-negative vector.</p>
︡b26dff5f-8655-4d4a-9759-f4cc558d21eb︡{"done":true,"html":"<p>By observing the eigenvalues we have outputted, we can see that the absolute values of the other two eigenvalues are all within \\(|1|\\), meaning that the absolute values of the other eigenvalues do not exceed \\(1\\). Another thing we can observe is that only the dominant eigenvector is a non-negative vector.</p>"}
︠317bc661-bf2b-4378-b480-dab260b6e005︠
"""
    This function is to computer the eigenvalue/eigenvector for our Markov matrix, studying the long term behavior.
  
"""
# Define a non-negative matrix A
A = matrix([[0, 0, 2/3], [1, 0, 0], [0, 1, 1/3]])  # fill in with non-negative values

# Define a non-negative initial vector w0
w0 = vector([1, 2, 3])  # fill in with non-negative values

# Compute the eigenvalues and right eigenvectors of A
eigenvalues = A.eigenvalues()
eigenvectors = A.eigenvectors_right()

# Find the dominant eigenvalue and its corresponding eigenvector
dominant_eigenvalue = max(eigenvalues, key=abs)
dominant_eigenvector = None
for eigenvalue, eigenvector_list, multiplicity in eigenvectors:
    if eigenvalue == dominant_eigenvalue:
        dominant_eigenvector = eigenvector_list[0]
        break

# Normalize the dominant eigenvector for comparison
dominant_eigenvector_normalized = dominant_eigenvector / dominant_eigenvector.norm()

# Initialize a variable for the result
result = w0

# Set a maximum number of iterations
max_iterations = 100

# Set a tolerance for convergence
tolerance = 1e-6

# Iterate and multiply
for k in range(max_iterations):
    new_result = A^k * w0
    # Normalize the result for comparison
    new_result_normalized = new_result / new_result.norm()

    # Check for convergence using a tolerance
    if (new_result_normalized - dominant_eigenvector_normalized).norm() < tolerance:
        break

    result = new_result

# Display the result
print(result)
print(result.n(digits=2))
︡c7166429-1850-4c2d-80a1-ce2bacff011c︡{"stdout":"(72670611493141823277045902932/42391158275216203514294433201, 24223543699881339092309899804/14130386091738734504764811067, 109005707058511380531790996862/42391158275216203514294433201)\n"}︡{"stdout":"(1.7, 1.7, 2.6)\n"}︡{"done":true}
︠b053f0c0-6032-4dd8-ac69-94b8273f4fb0i︠
%html
<p>Super cool! It seems like we've discovered a fascinating aspect of Markov matrices. Taking a closer look at the dominant eigenvector above, you'll notice that it's just a scalar multiple of the dominant eigenvector! Isn't that intriguing? Indeed, we can use this to study long-term behavior! I can't wait to share with you how it works in google pagerank.</p>
<div class="text-box">
    <p>$Example13$ Compute the page rank of the $5$ webpages you see in the following directed graph. An arrow from $i$ to $j$ indicates that page $i$ links to page $j$. Use the rule that when you are at a webpage you will teleport with probability \(\frac{1}{4}\) and follow a link with probability \(\frac{3}{4}\). Assume that all links from a page have equal probability of being followed.</p>
</div>
︡313f95d6-bccc-4f42-9929-e2dd4cc56cce︡{"done":true,"html":"<p>Super cool! It seems like we've discovered a fascinating aspect of Markov matrices. Taking a closer look at the dominant eigenvector above, you'll notice that it's just a scalar multiple of the dominant eigenvector! Isn't that intriguing? Indeed, we can use this to study long-term behavior! I can't wait to share with you how it works in google pagerank.</p>\n<div class=\"text-box\">\n    <p>$Example13$ Compute the page rank of the $5$ webpages you see in the following directed graph. An arrow from $i$ to $j$ indicates that page $i$ links to page $j$. Use the rule that when you are at a webpage you will teleport with probability \\(\\frac{1}{4}\\) and follow a link with probability \\(\\frac{3}{4}\\). Assume that all links from a page have equal probability of being followed.</p>\n</div>"}
︠fe0b42c4-4b51-41c1-9e47-8a86005b5bf6si︠
import networkx as nx
import matplotlib.pyplot as plt

# Create a directed graph
G = nx.DiGraph()

# Add nodes
nodes = [1, 2, 3, 4, 5]
G.add_nodes_from(nodes)

# Add edges
edges = [(1, 4), (2, 1), (3, 1), (4, 2), (4, 5), (5, 3)]
G.add_edges_from(edges)

# Draw the graph
pos = nx.spring_layout(G)  # Choose a layout method (spring layout in this case)
nx.draw(G, pos, with_labels=True, node_size=500, node_color='skyblue', font_size=12, font_color='black', arrowsize=15)

# Show the graph
plt.show()
︡2993f698-6a5f-42b1-aa98-c0a7e3a21194︡{"file":{"filename":"d6124b08-bc4f-417f-94c7-61641221d079.svg","show":true,"text":null,"uuid":"490badfc-a149-4f4b-a851-030aa2aede2a"},"once":false}︡{"done":true}
︠6c74048e-cdb6-49db-a263-8fd259a65d93i︠
%html
<p>Based on the instructions in the question and with reference to the diagram, we can construct the following matrices:</p>
<p>$Link$ = \(\begin{bmatrix}
0 & 1 & 1 & 0 & 0 \\
0 & 0 & 0 & \frac{1}{3} & 0 \\
0 & 0 & 0 & \frac{1}{3} & 1 \\
1 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & \frac{1}{3} & 0 \\
\end{bmatrix}\)
,  $Teleport$ = \(\begin{bmatrix}
\frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} \\
\frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} \\
\frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} \\
\frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} \\
\frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} & \frac{1}{5} \\
\end{bmatrix}\)</p>

<p>Now, the matrix that combines these with teleportation, known as the transition matrix with teleportation, can be represented as: $Page$ = \(\frac{3}{4} \cdot\) $Link$ + \(\frac{1}{4} \cdot\) $Teleport$</p>

<p>We will calculate this transition matrix using Sage:</p>

︡c862ec3d-1ae0-4164-b18d-1a3efb913a4d︡{"done":true,"html":"<p>Based on the instructions in the question and with reference to the diagram, we can construct the following matrices:</p>\n<p>$Link$ = \\(\\begin{bmatrix}\n0 & 1 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & \\frac{1}{3} & 0 \\\\\n0 & 0 & 0 & \\frac{1}{3} & 1 \\\\\n1 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & \\frac{1}{3} & 0 \\\\\n\\end{bmatrix}\\)\n,  $Teleport$ = \\(\\begin{bmatrix}\n\\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} \\\\\n\\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} \\\\\n\\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} \\\\\n\\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} \\\\\n\\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} & \\frac{1}{5} \\\\\n\\end{bmatrix}\\)</p>\n\n<p>Now, the matrix that combines these with teleportation, known as the transition matrix with teleportation, can be represented as: $Page$ = \\(\\frac{3}{4} \\cdot\\) $Link$ + \\(\\frac{1}{4} \\cdot\\) $Teleport$</p>\n\n<p>We will calculate this transition matrix using Sage:</p>"}
︠a9d77af6-a932-46fd-99cc-a07f702c058cs︠
# Define the Link matrix
Link = Matrix([[0, 1, 1, 0, 0],
               [0, 0, 0, 1/3, 0],
               [0, 0, 0, 1/3, 1],
               [1, 0, 0, 0, 0],
               [0, 0, 0, 1/3, 0]])

# Define the Teleport matrix
Teleport = Matrix([[1/5, 1/5, 1/5, 1/5, 1/5],
                   [1/5, 1/5, 1/5, 1/5, 1/5],
                   [1/5, 1/5, 1/5, 1/5, 1/5],
                   [1/5, 1/5, 1/5, 1/5, 1/5],
                   [1/5, 1/5, 1/5, 1/5, 1/5]])

# Define the transition matrix with teleportation
Page = (3/4) * Link + (1/4) * Teleport
print(Page)
︡03b2a5cb-e2d4-4fc7-912e-d03c2010eca7︡{"stdout":"[1/20  4/5  4/5 1/20 1/20]\n[1/20 1/20 1/20 3/10 1/20]\n[1/20 1/20 1/20 3/10  4/5]\n[ 4/5 1/20 1/20 1/20 1/20]\n[1/20 1/20 1/20 3/10 1/20]\n"}︡{"done":true}
︠7201ef79-76f4-446d-a6de-72c1ae969f9fs︠
Page.eigenvalues()
︡d0af347d-4e64-490b-be99-52dbe6d9ad87︡{"stdout":"[1, 0, -0.3318700005183316?, -0.2090649997408343? - 0.6164633182425810?*I, -0.2090649997408343? + 0.6164633182425810?*I]\n"}︡{"done":true}
︠76610f3b-9ea8-45bc-9200-253de7a868f2s︠
Page.right_eigenvectors()
︡18be500c-adff-4b1d-9bc2-a2bba38ce30c︡{"stdout":"[(1, [\n(1, 92/229, 161/229, 211/229, 92/229)\n], 1), (0, [\n(0, 1, -1, 0, 0)\n], 1), (-0.3318700005183316?, [(1, 1.702414383919316?, -2.144907717943758?, -2.259921049894873?, 1.702414383919316?)], 1), (-0.2090649997408343? - 0.6164633182425810?*I, [(1, -0.3512071919596577? - 0.2691725449816134?*I, 0.07245385897187869? - 0.5527785460084946?*I, -0.3700394750525635? + 1.091123635971722?*I, -0.3512071919596577? - 0.2691725449816134?*I)], 1), (-0.2090649997408343? + 0.6164633182425810?*I, [(1, -0.3512071919596577? + 0.2691725449816134?*I, 0.07245385897187869? + 0.5527785460084946?*I, -0.3700394750525635? - 1.091123635971722?*I, -0.3512071919596577? + 0.2691725449816134?*I)], 1)]"}︡{"stdout":"\n"}︡{"done":true}
︠a45b1100-f8f6-464b-b7b4-6b719773996di︠
%html
Maybe we need to rescale it to make sure the probability is $1$, but maybe we can figure out the order of preference for these sites directly from the first column of dominant eigenvector, which we call the page rank vector.That is $1>4>3>5=2$
︡06e22d21-faea-4725-8732-1c647904eaa6︡{"done":true,"html":"Maybe we need to rescale it to make sure the probability is $1$, but maybe we can figure out the order of preference for these sites directly from the first column of dominant eigenvector, which we call the page rank vector.That is $1>4>3>5=2$"}
︠5f40d5e3-4f51-4d0f-a1bf-e1cbadfe66e5i︠
%html
<h5>$3.4^*-PA=LU$ </h5>
<p> It represents the relationship between matrix decomposition and permutation, commonly used in linear algebra and numerical analysis. Let me explain the meaning of each symbol:</p>
    <ul>
        <li>"$P$" stands for the $permutation$ $matrix$, which represents the permutation of rows. The $P$ matrix is a square matrix with the characteristic that each row and each column have exactly one element equal to $1$, and all other elements are $0$. The position of this $1$ indicates the row permutation, i.e., the reordering of rows in the original matrix.</li>
        <li>"$A$" represents the original matrix, which is the matrix that needs to undergo $LU$ decomposition.</li>
        <li>"$L$" represents the lower triangular matrix, which is the lower triangular part of the $LU$ decomposition, with all elements above the main diagonal being $0$, and some elements below the main diagonal may be non-zero. The $L$ matrix is used to represent the lower triangular part of the original matrix $A$.</li>
        <li>"$U$" represents the upper triangular matrix, which is the upper triangular part of the $LU$ decomposition, with all elements below the main diagonal being $0$, and some elements above the main diagonal may be non-zero. The U matrix is used to represent the upper triangular part of the original matrix $A$.</li>
    </ul>
︡dcf6b5df-3d94-49a6-a44f-efbf54c64fbe︡{"done":true,"html":"<h5>$3.4^*-PA=LU$ </h5>\n<p> It represents the relationship between matrix decomposition and permutation, commonly used in linear algebra and numerical analysis. Let me explain the meaning of each symbol:</p>\n    <ul>\n        <li>\"$P$\" stands for the $permutation$ $matrix$, which represents the permutation of rows. The $P$ matrix is a square matrix with the characteristic that each row and each column have exactly one element equal to $1$, and all other elements are $0$. The position of this $1$ indicates the row permutation, i.e., the reordering of rows in the original matrix.</li>\n        <li>\"$A$\" represents the original matrix, which is the matrix that needs to undergo $LU$ decomposition.</li>\n        <li>\"$L$\" represents the lower triangular matrix, which is the lower triangular part of the $LU$ decomposition, with all elements above the main diagonal being $0$, and some elements below the main diagonal may be non-zero. The $L$ matrix is used to represent the lower triangular part of the original matrix $A$.</li>\n        <li>\"$U$\" represents the upper triangular matrix, which is the upper triangular part of the $LU$ decomposition, with all elements below the main diagonal being $0$, and some elements above the main diagonal may be non-zero. The U matrix is used to represent the upper triangular part of the original matrix $A$.</li>\n    </ul>"}
︠db27ec9d-0de5-4be9-8b7c-5776dfbc7b3b︠
    """
    This function is for illustrating the process of LU decomposition.
    
    Inputs:
    -------
    The matrix we want to use the LU decomposition.
    
    Outputs:
    --------
    P: the permutation matrix
    A: origin matrix we used
    L: lower triangular matrix
    U: upper triangular matrix
   
    """
    
# Create matrix A
A = matrix([(2,1,1),(4,-6,0),(-2,7,2)])

# Perform LU decomposition and obtain P, L, and U matrices
# Use pivot='nonzero' to select non-zero pivots for numerical stability and correctness
P, L, U = A.LU(pivot='nonzero')

# Transpose the P matrix (to convert column permutation matrix into row permutation matrix)
P = P.T

# Print the original matrix A
print(f'A=\n{A}\n')

# Print the permutation matrix P
print(f'P (row permutation matrix)=\n{P}\n')

# Print the lower triangular matrix L
print(f'L (lower triangular matrix)=\n{L}\n')

# Print the upper triangular matrix U
print(f'U (upper triangular matrix)=\n{U}')
︡a84c38f1-b437-4854-8764-885ecb4c076e︡{"stdout":"A=\n[ 2  1  1]\n[ 4 -6  0]\n[-2  7  2]\n\n"}︡{"stdout":"P (row permutation matrix)=\n[1 0 0]\n[0 1 0]\n[0 0 1]\n\n"}︡{"stdout":"L (lower triangular matrix)=\n[ 1  0  0]\n[ 2  1  0]\n[-1 -1  1]\n\n"}︡{"stdout":"U (upper triangular matrix)=\n[ 2  1  1]\n[ 0 -8 -2]\n[ 0  0  1]\n"}︡{"done":true}
︠b7d7fb19-1f2d-472f-94db-86a6c2ba9b3ai︠
%html
<h6>Dear linear algebraist：This is the end of my introduction to the matrix, thank you for your use, I hope this tool can help you more or less a little, I hope everything goes well with your future studies, if you encounter any problems, feel free to contact me:)</h6>

︡5b54435b-5752-4353-aebd-2957b314d68a︡{"done":true,"html":"<h6>Dear linear algebraist：This is the end of my introduction to the matrix, thank you for your use, I hope this tool can help you more or less a little, I hope everything goes well with your future studies, if you encounter any problems, feel free to contact me:)</h6>"}
︠0f646a3d-f6ff-46bf-9388-85fe757d760d︠









