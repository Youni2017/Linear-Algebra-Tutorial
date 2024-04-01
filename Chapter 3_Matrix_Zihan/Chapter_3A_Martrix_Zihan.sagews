︠82f18c2f-34eb-42f8-8efb-d8e3ba3d7435i︠
%html
<h2 style="text-align: center;">Welcome to Chapter 3: The Paradise of <i>Matrices</i></h2>
<p style="text-align: center;" >Originally created by $Zihan Chen$ | $zchen84@uw.edu$ </p>
<h5><strong>Preface:</strong></h5>
<p>This <strong>Sage Worksheet</strong> is a part of a $Linear$ $Algebra$ tutorial created by Prof.$Sara$ $Billey$'s 2024 <i>WXML</i> group. Referred to $Linear$ $Algebra$ $with$ $Applications$ $by$ $Holt$, $2^{nd}$ $edition$, this Worksheet is intended to help future $UW$ $Math208$ students with some tools and software to present more visual linear algebra content. This Worksheet will revolve around $Section 3.1$ of $Holt$'s Book.</p>
<h5><strong>Get Strart:</strong></h5>
<p>I am delighted to share with you the basic knowledge of matrices, an important part of $linear$ $algebra$. But allow me to start with $linear$ $transformations$. You might wonder what the connection between $linear$ $transformations$ and $matrices$ is, but I believe after this section, you will have a better understanding of $linear$ $transformations$. Let's begin with $Section 3.1$: $Linear$ $Transformations$!</p>
<h5>$3.1—$ $Linear$ $Transformations$</h5>
<p>You might be familiar with what a transformation is, which is the operation of changing the position or appearance of a figure. But what exactly is '$linear$'? Why use '$linear$' to describe a $transformation$?</p>
<p>In textbooks, we have a clear definition of linear transformation. </p>


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
<p>$Theorem1:$ A function \( T: \mathbb{R}^m \rightarrow \mathbb{R}^n \) is a linear transformation if for all vectors \( u \) and \( v \) in \( \mathbb{R}^m \) and all scalars \( r \), we have:</p>
<ul>
    <li>\( T(u + v) = T(u) + T(v) \)</li>
    <li>\( T(ru) = rT(u) \)</li>
</ul>
</div>

<p>Let's consider a simple example:<p>

<div class="text-box">
<p>$Example1:$ Let \( T\left(\begin{bmatrix} x \\ y \end{bmatrix}\right) = \begin{bmatrix} x^2 \\ x + y \end{bmatrix} \). We will try to determine whether \( T \) is a linear transformation using $Theorem1$.</p>
</div>


︡3bc5c9fe-b64d-43b1-aabb-9cecc44ab006︡{"done":true,"html":"<h2 style=\"text-align: center;\">Welcome to Chapter 3: The Paradise of <i>Matrices</i></h2>\n<p style=\"text-align: center;\" >Originally created by $Zihan Chen$ | $zchen84@uw.edu$ </p>\n<h5><strong>Preface:</strong></h5>\n<p>This <strong>Sage Worksheet</strong> is a part of a $Linear$ $Algebra$ tutorial created by Prof.$Sara$ $Billey$'s 2024 <i>WXML</i> group. Referred to $Linear$ $Algebra$ $with$ $Applications$ $by$ $Holt$, $2^{nd}$ $edition$, this Worksheet is intended to help future $UW$ $Math208$ students with some tools and software to present more visual linear algebra content. This Worksheet will revolve around $Section 3.1$ of $Holt$'s Book.</p>\n<h5><strong>Get Strart:</strong></h5>\n<p>I am delighted to share with you the basic knowledge of matrices, an important part of $linear$ $algebra$. But allow me to start with $linear$ $transformations$. You might wonder what the connection between $linear$ $transformations$ and $matrices$ is, but I believe after this section, you will have a better understanding of $linear$ $transformations$. Let's begin with $Section 3.1$: $Linear$ $Transformations$!</p>\n<h5>$3.1—$ $Linear$ $Transformations$</h5>\n<p>You might be familiar with what a transformation is, which is the operation of changing the position or appearance of a figure. But what exactly is '$linear$'? Why use '$linear$' to describe a $transformation$?</p>\n<p>In textbooks, we have a clear definition of linear transformation. </p>\n\n\n<html lang=\"zh-CN\">\n<head>\n<meta charset=\"UTF-8\">\n<title>Text Box Example</title>\n<style>\n    .text-box {\n        border: 1px solid #000;\n        padding: 10px;\n        margin: 10px 0;\n        width: fit-content;\n        display: inline-block;\n        background-color: #f0f0f0;\n    }\n</style>\n</head>\n<body>\n\n<div class=\"text-box\">\n<p>$Theorem1:$ A function \\( T: \\mathbb{R}^m \\rightarrow \\mathbb{R}^n \\) is a linear transformation if for all vectors \\( u \\) and \\( v \\) in \\( \\mathbb{R}^m \\) and all scalars \\( r \\), we have:</p>\n<ul>\n    <li>\\( T(u + v) = T(u) + T(v) \\)</li>\n    <li>\\( T(ru) = rT(u) \\)</li>\n</ul>\n</div>\n\n<p>Let's consider a simple example:<p>\n\n<div class=\"text-box\">\n<p>$Example1:$ Let \\( T\\left(\\begin{bmatrix} x \\\\ y \\end{bmatrix}\\right) = \\begin{bmatrix} x^2 \\\\ x + y \\end{bmatrix} \\). We will try to determine whether \\( T \\) is a linear transformation using $Theorem1$.</p>\n</div>"}
︠69f0bfe1-10b5-4e03-a2d1-9ee4d503323b︠
    """
    This function is for checking 2 conditions of the linear transformation
    1. closed under addition
    2. closed under scalar multiplication
    
    Inputs:
    -------
    variables named x1,x2,y1,y2, in symbolic form
    
    Outputs:
    --------
    (additive_check,homogeneity_check), that is, (satisfy condition 1? , satisfy condition 2?)
    eg. (satisfy condition 1, not satisfy condition 2)=(True,False)
    """

    # define unknown symbols（skip choosing concrete numbers here just for demonstrate more representative examples）
    var('x_1 x_2 y_1 y_2 c')

    # define x and y, note here SR: Symbolic Ring
    # we use unknown variables to make our line changes more representative:)
    x = vector(SR, [x_1, x_2])
    y = vector(SR, [y_1, y_2])

    # define transformation T 
    def T(v):
        x, y = v
        return vector([x^2, x + y])        
        # you can change the "return vector" if you want)

    # check first condition: T(x+y) ?=? Tx+Ty
    additive_check = T(x + y) == T(x) + T(y)

    # check second condition: cT(x) ?=? T(c*x)
    homogeneity_check = c * T(x) == T(c * x)

    # output results
    (additive_check, homogeneity_check)
︡e4016dab-0271-41ba-b785-6cdd93e91aac︡{"stdout":"(x_1, x_2, y_1, y_2, c)\n"}︡{"stdout":"(False, False)\n"}︡{"done":true}
︠159a03a2-f0ca-4862-b80c-35368c313538i︠
%html
<p>This does not seem to be a linear transformation because we checked whether \(A(x + y) = Ax + Ay\) and whether \(cA(x) = A(c \cdot x)\). Both of these conditions are false in our example, so we can conclude that this is <strong>not</strong> a linear transformation.</p>
<p>Similarly, I encourage you to modify this expression and think about when it would be a linear transformation. ($Hint$: What should be the highest power of the unknowns in a linear transformation?)</p>
<p>Let's consider $Example2$ and try to determine whether it is a linear transformation by observing the equation.</p>
<div class="text-box">
<p>$Example2:$ Let \( T_2\left(\begin{bmatrix} x \\ y \end{bmatrix}\right) = \begin{bmatrix} x+y \\ x + y+1 \end{bmatrix} \). We will try to determine whether \( T_2 \) is a linear transformation using $Theorem1$.</p>
</div>


︡c79b0fa1-b656-4c29-ad19-9135d4c01a0f︡{"done":true,"html":"<p>This does not seem to be a linear transformation because we checked whether \\(A(x + y) = Ax + Ay\\) and whether \\(cA(x) = A(c \\cdot x)\\). Both of these conditions are false in our example, so we can conclude that this is <strong>not</strong> a linear transformation.</p>\n<p>Similarly, I encourage you to modify this expression and think about when it would be a linear transformation. ($Hint$: What should be the highest power of the unknowns in a linear transformation?)</p>\n<p>Let's consider $Example2$ and try to determine whether it is a linear transformation by observing the equation.</p>\n<div class=\"text-box\">\n<p>$Example2:$ Let \\( T_2\\left(\\begin{bmatrix} x \\\\ y \\end{bmatrix}\\right) = \\begin{bmatrix} x+y \\\\ x + y+1 \\end{bmatrix} \\). We will try to determine whether \\( T_2 \\) is a linear transformation using $Theorem1$.</p>\n</div>"}
︠9f459f8d-e00d-42ff-b33e-cd4e4e2e9f28︠
"""
    Same function as before
 
    Inputs:
    -------
    variables named x1,x2,y1,y2, in symbolic form
    
    Outputs:
    --------
    (additive_check,homogeneity_check)

"""

var('x_1 x_2 y_1 y_2 c')

x = vector(SR, [x_1, x_2])
y = vector(SR, [y_1, y_2])

def T_2(v):
    x, y = v
    return vector([x+y, x+y+1])

additive_check = T_2(x + y) == T_2(x) + T_2(y)

homogeneity_check = c * T_2(x) == T_2(c * x)

(additive_check, homogeneity_check)
︡866c62ef-755e-4c19-9044-2bc5b80e5e32︡{"stdout":"(x_1, x_2, y_1, y_2, c)\n"}︡{"stdout":"(False, False)\n"}︡{"done":true}
︠dab1fa6d-d13e-4476-8004-fbd9c57b45d9i︠
%html
<p>I assume you've already understood how to simply observe an expression to conclude whether it's a linear transformation. Now, I want to present another example to help you understand better.</p>
<div class="text-box">
    <p>$Example3:$ Suppose we have a transformation \( T_3\left(\begin{bmatrix} x \\ y \end{bmatrix}\right) = \begin{bmatrix} 2x \\ 2y \end{bmatrix} \). I'd like you to determine whether this is a linear transformation, but this time, I have a request:</p>
<ol>
    <li>I hope you can represent this linear transformation in the form: \( T_3\left(\begin{bmatrix} x \\ y \end{bmatrix}\right) = A\begin{bmatrix} x \\ y \end{bmatrix} \).</li>
    <li>Insert <strong>any</strong> coordinates you like for $x$ and $y$.</li>
    <li>Determine whether this is a linear transformation based on the $Theorem1$.</li>
</ol>
</div>
<p>Of course, I will also provide my answer, let's try it together! </p>
<ol>
    <li>Represent this linear transformation: \( T([x, y]) = \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix}([x, y]) \), where $A=\begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix}.$ In response, we defined matrix $A$ in sage:

︡bdffd3d1-f7bc-42fe-bad9-f9f7898f94e2︡{"done":true,"html":"<p>I assume you've already understood how to simply observe an expression to conclude whether it's a linear transformation. Now, I want to present another example to help you understand better.</p>\n<div class=\"text-box\">\n    <p>$Example3:$ Suppose we have a transformation \\( T_3\\left(\\begin{bmatrix} x \\\\ y \\end{bmatrix}\\right) = \\begin{bmatrix} 2x \\\\ 2y \\end{bmatrix} \\). I'd like you to determine whether this is a linear transformation, but this time, I have a request:</p>\n<ol>\n    <li>I hope you can represent this linear transformation in the form: \\( T_3\\left(\\begin{bmatrix} x \\\\ y \\end{bmatrix}\\right) = A\\begin{bmatrix} x \\\\ y \\end{bmatrix} \\).</li>\n    <li>Insert <strong>any</strong> coordinates you like for $x$ and $y$.</li>\n    <li>Determine whether this is a linear transformation based on the $Theorem1$.</li>\n</ol>\n</div>\n<p>Of course, I will also provide my answer, let's try it together! </p>\n<ol>\n    <li>Represent this linear transformation: \\( T([x, y]) = \\begin{bmatrix} 2 & 0 \\\\ 0 & 2 \\end{bmatrix}([x, y]) \\), where $A=\\begin{bmatrix} 2 & 0 \\\\ 0 & 2 \\end{bmatrix}.$ In response, we defined matrix $A$ in sage:"}
︠5933c049-5467-47db-b652-eb84ed2c440c︠
#step1 define a matrix
A = matrix([[2,0],[0,2]])
print("A=")
A
︡a6bc5070-2041-42ce-b7b3-a1de076a3ee4︡{"stdout":"A=\n"}︡{"stdout":"[2 0]\n[0 2]\n"}︡{"done":true}
︠29612b3e-9fc9-4c2b-ba83-a17444bf9730i︠
%html
<p>2. Insert my favorite coordinates: $u=[1,2]^T, v=[2,3]^T$.</p>
<p>3. Check whether it is a linear transformation.</p>

︡b60a5ad2-835c-473f-a2dc-539c0a006bff︡{"done":true,"html":"<p>2. Insert my favorite coordinates: $u=[1,2]^T, v=[2,3]^T$.</p>\n<p>3. Check whether it is a linear transformation.</p>"}
︠240f1903-868a-44f9-93c7-66b87dd5186a︠
"""""
    Inputs:
    -------
    vectors you like, u & v
    
    Outputs:
    --------
    (additive_check,homogeneity_check)
"""""

#step2 input the vector you want
u = vector([1,2])
v = vector([2,3])
r = 5

#step3 determine whether it is linear transformation?    
check1 = A*u+A*v == A*(u+v)
check2 = r*A*u == A*(r*u)
(check1, check2)
︡2b257a3d-fe2c-4413-8ad2-18ec17fc2cfc︡{"stdout":"(True, True)\n"}︡{"done":true}
︠13b54e4a-a024-4bb2-a445-62435193a6a9i︠
%html
<p>If your attempt concluded that this is a linear transformation, congratulations, you are correct. But is this a coincidence or a necessity? Let's see what the textbook says.</p>
<div class="text-box">
<p>$Theorem2:$ Let $A$ be an $n×m$ matrix, and define \( T(x) = Ax \). Then \( T: \mathbb{R}^m \rightarrow \mathbb{R}^n \) is a linear transformation. </p>
</div>
<p>So, we now know that any matrix can represent a linear transformation. In other words, if a transformation is linear, we can always write it in the form of a matrix. This is indeed a remarkable conclusion! I encourage you to explore more possibilities!</p>
<p>Also, I would like to introduce a more abstract concept for you to understand, which is also an effective way to judge linear transformations. This theorem is also in the book. </p>
<div class="text-box">
<p>$Theorem3:$ Let \([a_1  a_2  ... a_m]\) be an $n×m$ matrix, and let \( T: \mathbb{R}^m \rightarrow \mathbb{R}^n \) with \( T(x) = Ax \) be a linear transformation. Then </p>
<ol>
<li> The vector \( w \) is in the range of \( T \) if and only if \( Ax = w \) is a consistent linear system.
<li> $range$(\( T \)) = $span${\( a_1, …, a_m \)}. </p>
</ol>
</div>
<p>The proofs are all in the textbook, but I want to give a simple example to illustrate this theorem.</p>
<div class="text-box">
<p>$Example4$ Suppose we have a simple \( R^1 \rightarrow R^1 \) transformation, \( T(x) = x^2 \). Is $T$ a linear transformation？</p>
<p><i>Hint:</i> Can you determine the domain and codomain through this linear transformation? </p>
    </div>
<p>Let's look at a standard example of a linear transformation, but this time, we'll use a graphical representation.</p>
︡c2dd2d3c-c494-4bc7-a6ed-af3cdd7113de︡{"done":true,"html":"<p>If your attempt concluded that this is a linear transformation, congratulations, you are correct. But is this a coincidence or a necessity? Let's see what the textbook says.</p>\n<div class=\"text-box\">\n<p>$Theorem2:$ Let $A$ be an $n×m$ matrix, and define \\( T(x) = Ax \\). Then \\( T: \\mathbb{R}^m \\rightarrow \\mathbb{R}^n \\) is a linear transformation. </p>\n</div>\n<p>So, we now know that any matrix can represent a linear transformation. In other words, if a transformation is linear, we can always write it in the form of a matrix. This is indeed a remarkable conclusion! I encourage you to explore more possibilities!</p>\n<p>Also, I would like to introduce a more abstract concept for you to understand, which is also an effective way to judge linear transformations. This theorem is also in the book. </p>\n<div class=\"text-box\">\n<p>$Theorem3:$ Let \\([a_1  a_2  ... a_m]\\) be an $n×m$ matrix, and let \\( T: \\mathbb{R}^m \\rightarrow \\mathbb{R}^n \\) with \\( T(x) = Ax \\) be a linear transformation. Then </p>\n<ol>\n<li> The vector \\( w \\) is in the range of \\( T \\) if and only if \\( Ax = w \\) is a consistent linear system.\n<li> $range$(\\( T \\)) = $span${\\( a_1, …, a_m \\)}. </p>\n</ol>\n</div>\n<p>The proofs are all in the textbook, but I want to give a simple example to illustrate this theorem.</p>\n<div class=\"text-box\">\n<p>$Example4$ Suppose we have a simple \\( R^1 \\rightarrow R^1 \\) transformation, \\( T(x) = x^2 \\). Is $T$ a linear transformation？</p>\n<p><i>Hint:</i> Can you determine the domain and codomain through this linear transformation? </p>\n    </div>\n<p>Let's look at a standard example of a linear transformation, but this time, we'll use a graphical representation.</p>"}
︠bac77131-3835-40c8-bcb0-533cb1ab3444︠
    """
    This function is for illustrating the rotation transformation.
   
    """

# Define a linear transformation, e.g., a rotation
def linear_transform(v):          # Define the rotation matrix, e.g., rotation by 45 degrees
    theta = pi / 2                # I suggest modifying this parameter
    rotation_matrix = matrix([[cos(theta), -sin(theta)], [sin(theta), cos(theta)]])
    return rotation_matr__build_class____build_class____build_class__ix * v

# Create vertices of the initial shape, for example, a unit square
square_vertices = [(0,0), (1,0), (1,1), (0,1)]

# Apply the linear transformation to each vertex
transformed_vertices = [linear_transform(vector(v)) for v in square_vertices]

# Create the original shape and the transformed shape
square = polygon(square_vertices, color='blue')
transformed_square = polygon(transformed_vertices, color='red')

# Display the original and the transformed shapes
show(square + transformed_square)
︡d1b63c70-1318-4f62-9c24-9492f963de74︡{"file":{"filename":"/tmp/tmp8r4_66cj/tmp_hujajq3b.svg","show":true,"text":null,"uuid":"3a19d171-8ef2-4d15-8cee-db1f1b12aabe"},"once":false}︡{"done":true}
︠a6beae0a-02c4-4883-ac3c-1a45c6325ec8i︠
%html
<p>This is what I consider to be the quintessential example of a linear transformation. What did you observe from it? First and foremost, the two shapes appear identical. By calculating the area, we can determine that they are exactly the same. If we take the blue square as the initial state, can you describe the process of transformation from blue to red?</p>
<p>What do you notice when you focus your attention on the basis vectors <span style="font-family: 'Times New Roman', serif;">\( \begin{bmatrix} 1 \\ 0 \end{bmatrix} \)</span> and <span style="font-family: 'Times New Roman', serif;">\( \begin{bmatrix} 0 \\ 1 \end{bmatrix} \)</span> represented?
︡cbb2376a-9698-4735-9198-77cc6b290f32︡{"done":true,"html":"<p>This is what I consider to be the quintessential example of a linear transformation. What did you observe from it? First and foremost, the two shapes appear identical. By calculating the area, we can determine that they are exactly the same. If we take the blue square as the initial state, can you describe the process of transformation from blue to red?</p>\n<p>What do you notice when you focus your attention on the basis vectors <span style=\"font-family: 'Times New Roman', serif;\">\\( \\begin{bmatrix} 1 \\\\ 0 \\end{bmatrix} \\)</span> and <span style=\"font-family: 'Times New Roman', serif;\">\\( \\begin{bmatrix} 0 \\\\ 1 \\end{bmatrix} \\)</span> represented?"}
︠c3b87b8d-26e6-49d1-bb49-cb9bfce175f8︠
    """
    This function is for illustrating the rotation transformation as well.
   
    """
    
# Define vectors and their transformations
vectors = {'original': [(1, 0), (0, 1)], 'transformed': [(0, 1), (-1, 0)]}

# Create a plot object
p = plot([])

# Plot original and transformed vectors
for (ox, oy), (tx, ty) in zip(vectors['original'], vectors['transformed']):
    # Plot original vector (in blue)
    p += arrow((0, 0), (ox, oy), color='blue', linestyle='dashed')
    # Plot transformed vector (in red)
    p += arrow((0, 0), (tx, ty), color='red')

# Set properties of the plot
p.show(xmin=-1.5, xmax=1.5, ymin=-1.5, ymax=1.5, aspect_ratio=1)

︡81a2b4a9-cd57-4218-bf1d-e1a15f3574ba︡{"file":{"filename":"/tmp/tmpim5v9_ve/tmp_p_pnmwa9.svg","show":true,"text":null,"uuid":"84f3fd25-c531-44a0-afc3-1c76323edf3e"},"once":false}︡{"done":true}
︠8f350250-f245-4d76-8367-6574bd5c5829i︠
%html
<p>As can be seen in the above figure, the vector <span style="font-family: 'Times New Roman', serif;">\( \begin{bmatrix} 1 \\ 0 \end{bmatrix} \)</span> is transformed to <span style="font-family: 'Times New Roman', serif;">\( \begin{bmatrix} 0 \\ 1 \end{bmatrix} \)</span>, and <span style="font-family: 'Times New Roman', serif;">\( \begin{bmatrix} 0 \\ 1 \end{bmatrix} \)</span> is transformed to <span style="font-family: 'Times New Roman', serif;">\( \begin{bmatrix} -1 \\ 0 \end{bmatrix} \)</span>! We have found the trick: by observing the transformation of the basis vectors $e_1, e_2, e_3,$ we can determine the nature of this linear transformation. I am eager to share more interesting examples of linear transformations with you.</p>
︡cb23761c-72be-4df1-98de-6808bd7019f4︡{"done":true,"html":"<p>As can be seen in the above figure, the vector <span style=\"font-family: 'Times New Roman', serif;\">\\( \\begin{bmatrix} 1 \\\\ 0 \\end{bmatrix} \\)</span> is transformed to <span style=\"font-family: 'Times New Roman', serif;\">\\( \\begin{bmatrix} 0 \\\\ 1 \\end{bmatrix} \\)</span>, and <span style=\"font-family: 'Times New Roman', serif;\">\\( \\begin{bmatrix} 0 \\\\ 1 \\end{bmatrix} \\)</span> is transformed to <span style=\"font-family: 'Times New Roman', serif;\">\\( \\begin{bmatrix} -1 \\\\ 0 \\end{bmatrix} \\)</span>! We have found the trick: by observing the transformation of the basis vectors $e_1, e_2, e_3,$ we can determine the nature of this linear transformation. I am eager to share more interesting examples of linear transformations with you.</p>"}
︠be14fcbd-89bf-40c1-a604-98e7da2b88c6︠
    """
    This function is for illustrating the shear transformation.
   
    """

# Define the shear transformation matrix
k = 1  # Shear factor
shear_matrix = matrix([[1, k], [0, 1]])

# Define the vertices of a square
square = matrix([[0, 0], [1, 0], [1, 1], [0, 1], [0, 0]])

# Apply the shear transformation
transformed_square = square * shear_matrix

# Plot the original square and the sheared square
original_plot = polygon(list(square), color='blue', fill=False)
transformed_plot = polygon(list(transformed_square), color='red', fill=False, linestyle='--')

# Display the plot
show(original_plot + transformed_plot, xmin=-0.5, xmax=2.5, ymin=-0.5, ymax=2.5, aspect_ratio=1)
︡62c7cc92-92a3-4974-b765-410b33253670︡{"file":{"filename":"/tmp/tmpim5v9_ve/tmp_eijr5xjp.svg","show":true,"text":null,"uuid":"5ab330b0-bffb-48e5-ae1b-7c64f3285eed"},"once":false}︡{"done":true}
︠673009e9-3d37-49b0-b4b9-17f60bd843a4i︠
%html
Observe this; it's an interesting shear transformation. Can you tell where each of the basis vectors has been transformed to？
︡1222f124-b392-4626-bd5c-a9c46490eae2︡{"done":true,"html":"Observe this; it's an interesting shear transformation. Can you tell where each of the basis vectors has been transformed to？"}
︠de48acd1-788c-4c12-b748-737af9a6deca︠
    """
    This function is for illustrating the scaling transformation.
   
    """
    
# Define scale factors
s_x = 2  # Scale factor for the X-axis
s_y = 0.5  # Scale factor for the Y-axis
scale_matrix = matrix([[s_x, 0], [0, s_y]])

# Define the vertices of a square
square = matrix([[0, 0], [1, 0], [1, 1], [0, 1], [0, 0]])

# Apply scaling transformation
transformed_square = square * scale_matrix

# Plot the original square and the scaled square
original_plot = polygon(list(square), color='blue', fill=False)
transformed_plot = polygon(list(transformed_square), color='red', fill=False, linestyle='--')

# Display the plot
show(original_plot + transformed_plot, xmin=-0.5, xmax=3, ymin=-0.5, ymax=1.5, aspect_ratio=1)
︡80f301ee-fecd-460b-bf11-8f5f54066067︡{"file":{"filename":"/tmp/tmp7fezuzoe/tmp_62zrnt5a.svg","show":true,"text":null,"uuid":"4d5a9548-413e-4b35-9aae-b83a09d172f4"},"once":false}︡{"done":true}
︠4ab91e69-785a-4972-b2de-6d1a16983767i︠
%html
<p>I find the method of observing linear transformations through $base$ $vectors$ particularly useful, especially when dealing with abstract three-dimensional linear transformations. For instance, consider an abstract matrix where its column vectors are given by \(E_1 = \begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}\), \(E_2 = \begin{bmatrix} 3 \\ 1.5 \\ 2 \end{bmatrix}\), and \(E_3 = \begin{bmatrix} 0 \\ 2 \\ 3 \end{bmatrix}\). It might be challenging to visualize this linear transformation at first. So, how can we understand this linear transformation? I suggest we deduce the transformation process by observing the changes in the $base$ $vectors$. Let's focus on the three $base$ $vectors$, labeled in $green$, $red$, and $blue$, respectively. Based on the diagram below, can you identify the characteristics of this linear transformation?</p>

︡4e9d7023-0bc7-4cde-8fd2-1bf69c83c569︡{"done":true,"html":"<p>I find the method of observing linear transformations through $base$ $vectors$ particularly useful, especially when dealing with abstract three-dimensional linear transformations. For instance, consider an abstract matrix where its column vectors are given by \\(E_1 = \\begin{bmatrix} 1 \\\\ 0 \\\\ 1 \\end{bmatrix}\\), \\(E_2 = \\begin{bmatrix} 3 \\\\ 1.5 \\\\ 2 \\end{bmatrix}\\), and \\(E_3 = \\begin{bmatrix} 0 \\\\ 2 \\\\ 3 \\end{bmatrix}\\). It might be challenging to visualize this linear transformation at first. So, how can we understand this linear transformation? I suggest we deduce the transformation process by observing the changes in the $base$ $vectors$. Let's focus on the three $base$ $vectors$, labeled in $green$, $red$, and $blue$, respectively. Based on the diagram below, can you identify the characteristics of this linear transformation?</p>"}
︠2ba2f4c8-052f-46c9-8d91-925815c87c24si︠
# Import required libraries for 3D visualization
from sage.all import line3d, vector, Graphics, point3d

# Define base vectors
e1 = vector([1, 0, 0])
e2 = vector([0, 1, 0])
e3 = vector([0, 0, 1])

# Define transformed vectors
E1 = vector([1, 0, 1])
E2 = vector([3, 1.5, 2])
E3 = vector([0, 2, 3])

# Create lines representing base vectors and transformed vectors
lines = line3d([vector([0,0,0]), e1], color='darkgreen', thickness=1000) + \
        line3d([vector([0,0,0]), e2], color='darkred', thickness=1000) + \
        line3d([vector([0,0,0]), e3], color='darkblue', thickness=1000) + \
        line3d([vector([0,0,0]), E1], color='green', thickness=1000) + \
        line3d([vector([0,0,0]), E2], color='red', thickness=1000) + \
        line3d([vector([0,0,0]), E3], color='blue', thickness=1000)

# Place distinct markers at the tips of each vector
marks = point3d([e1, e2, e3, E1, E2, E3], color='grey', size=5)

# Create a dashed 3D grid (upper half)
def create_dashed_3d_grid(size, color, thickness=5, linestyle='--'):
    grid = Graphics()
    for i in range(0, size + 1):
        for j in range(0, size + 1):
            grid += line3d([(i, j, 0), (i, j, size)], color=color, thickness=thickness, linestyle=linestyle) # Z-axis lines
            grid += line3d([(i, 0, j), (i, size, j)], color=color, thickness=thickness, linestyle=linestyle) # Y-axis lines
            grid += line3d([(0, i, j), (size, i, j)], color=color, thickness=thickness, linestyle=linestyle) # X-axis lines
    return grid

# Create the dashed grid for visualization
grid = create_dashed_3d_grid(5, 'lightgrey', thickness=10, linestyle='--')

# Display the 3D plot
plot = lines + marks + grid
plot.show(frame=False, aspect_ratio=1)
︡f005ced0-f166-4399-a061-a29beeba095b︡{"file":{"filename":"227f9045-fbd4-4d12-a9d6-8c4c11e37ddf.sage3d","uuid":"227f9045-fbd4-4d12-a9d6-8c4c11e37ddf"}}︡{"done":true}
︠78d47cdb-832b-4daf-ac2f-95c2de3c6319i︠
%html
<p>Now let's look at one-to-one and onto linear transformations. As usual, let's start with the textbook definitions.</p>

<p>First, let's consider $one-to-one$:<br>
    <div class="text-box">
Let $A$ be an $n×m$ matrix and define \( T: \mathbb{R}^m \rightarrow \mathbb{R}^n \) by \( T(\mathbf{x}) = A\mathbf{x} \). Then<br>
<ol>
<li> \( T \) is one-to-one if and only if the columns of \( A \) are linearly independent.<br>
<li> If \( A \sim B \) and \( B \) is in echelon form, then \( T \) is one-to-one if and only if \( B \) has a pivot position in every column.<br>
<li> If \( n < m \), then \( T \) is not one-to-one.</p>
</ol>
</div>
<p>Next, the definition of $onto$:<br>
    <div class="text-box">
Let A be an n × m matrix and define \( T: \mathbb{R}^m \rightarrow \mathbb{R}^n \) by \( T(\mathbf{x}) = A\mathbf{x} \). Then<br>
<ol>
<li> \( T \) is onto if and only if the columns of \( A \) span the codomain \( \mathbb{R}^n \).<br>
<li>  If \( A \sim B \) and \( B \) is in echelon form, then \( T \) is onto if and only if \( B \) has a pivot position in every row.<br>
<li> If \( n > m \), then \( T \) is not onto.</p>
</ol>
</div>
<p>Can you find commonalities between these two definitions and summarize them? I think a good way to check is to see if there is a pivot in every row and column after reducing to echelon form. In other words, we can check if a linear transformation is one-to-one by checking for pivots in every column, and check if it's onto by checking for pivots in every row, which will be more helpful for our judgment! Let's start with an example.</p>
<div class="text-box">
    $Example5$ Suppose we have a $2×3$ matrix $B$=\( \begin{bmatrix} 1 & 2 \\ 3 & 4 \\ 5 & 6 \end{bmatrix} \), and determine whether it is one-to-one and onto.</p>
</div>

︡51c02f45-351a-4d83-9a76-2eb598eb47a2︡{"done":true,"html":"<p>Now let's look at one-to-one and onto linear transformations. As usual, let's start with the textbook definitions.</p>\n\n<p>First, let's consider $one-to-one$:<br>\n    <div class=\"text-box\">\nLet $A$ be an $n×m$ matrix and define \\( T: \\mathbb{R}^m \\rightarrow \\mathbb{R}^n \\) by \\( T(\\mathbf{x}) = A\\mathbf{x} \\). Then<br>\n<ol>\n<li> \\( T \\) is one-to-one if and only if the columns of \\( A \\) are linearly independent.<br>\n<li> If \\( A \\sim B \\) and \\( B \\) is in echelon form, then \\( T \\) is one-to-one if and only if \\( B \\) has a pivot position in every column.<br>\n<li> If \\( n < m \\), then \\( T \\) is not one-to-one.</p>\n</ol>\n</div>\n<p>Next, the definition of $onto$:<br>\n    <div class=\"text-box\">\nLet A be an n × m matrix and define \\( T: \\mathbb{R}^m \\rightarrow \\mathbb{R}^n \\) by \\( T(\\mathbf{x}) = A\\mathbf{x} \\). Then<br>\n<ol>\n<li> \\( T \\) is onto if and only if the columns of \\( A \\) span the codomain \\( \\mathbb{R}^n \\).<br>\n<li>  If \\( A \\sim B \\) and \\( B \\) is in echelon form, then \\( T \\) is onto if and only if \\( B \\) has a pivot position in every row.<br>\n<li> If \\( n > m \\), then \\( T \\) is not onto.</p>\n</ol>\n</div>\n<p>Can you find commonalities between these two definitions and summarize them? I think a good way to check is to see if there is a pivot in every row and column after reducing to echelon form. In other words, we can check if a linear transformation is one-to-one by checking for pivots in every column, and check if it's onto by checking for pivots in every row, which will be more helpful for our judgment! Let's start with an example.</p>\n<div class=\"text-box\">\n    $Example5$ Suppose we have a $2×3$ matrix $B$=\\( \\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \\\\ 5 & 6 \\end{bmatrix} \\), and determine whether it is one-to-one and onto.</p>\n</div>"}
︠2f5613aa-09d8-488f-bc76-f0d9b6090774s︠
B=matrix(3,2,[1,2,3,4,5,6])
B_2=B.rref()
print("Matrix B is")
print(B)
print("RREF of B is")
print(B_2)
︡2ca6870f-4d02-470a-b3a3-e5dcdacca19e︡{"stdout":"Matrix B is\n"}︡{"stdout":"[1 2]\n[3 4]\n[5 6]\n"}︡{"stdout":"RREF of B is\n"}︡{"stdout":"[1 0]\n[0 1]\n[0 0]\n"}︡{"done":true}
︠b42733f0-ffb1-42d8-8955-0566478797f2i︠
%html
<p>Let's examine this example! We observe that there is a pivot in each column, so it is one-to-one, but not in every row, which leads us to conclude that this linear transformation is not onto. Think about why it is not onto. Can we see this conclusion at a glance? Let's go back to the definition: the primary definition of onto is that the columns of matrix $A$ span the entire \( \mathbb{R}^3 \). Is this true in our case? The answer is no, because we know that any two column vectors cannot span \( \mathbb{R}^3 \). In other words, we need at least three column vectors for the transformation to be onto. Therefore, we conclude that a linear transformation from \( \mathbb{R}^m \) to \( \mathbb{R}^n \) is never onto when \( m > n \). Now, let's look at another example. </p>
<div class="text-box">
    <p>$Example6$ Suppose we have a new matrix \( C = \begin{bmatrix} 2 & 1 & 1 \\ 1 & 2 & 0 \\ 1 & 3 & 0 \end{bmatrix} \). Determine whether it is one-to-one and onto.</p>
</div>
︡abb7f8e1-3e5a-45a3-8514-3588b3eb03fe︡{"done":true,"html":"<p>Let's examine this example! We observe that there is a pivot in each column, so it is one-to-one, but not in every row, which leads us to conclude that this linear transformation is not onto. Think about why it is not onto. Can we see this conclusion at a glance? Let's go back to the definition: the primary definition of onto is that the columns of matrix $A$ span the entire \\( \\mathbb{R}^3 \\). Is this true in our case? The answer is no, because we know that any two column vectors cannot span \\( \\mathbb{R}^3 \\). In other words, we need at least three column vectors for the transformation to be onto. Therefore, we conclude that a linear transformation from \\( \\mathbb{R}^m \\) to \\( \\mathbb{R}^n \\) is never onto when \\( m > n \\). Now, let's look at another example. </p>\n<div class=\"text-box\">\n    <p>$Example6$ Suppose we have a new matrix \\( C = \\begin{bmatrix} 2 & 1 & 1 \\\\ 1 & 2 & 0 \\\\ 1 & 3 & 0 \\end{bmatrix} \\). Determine whether it is one-to-one and onto.</p>\n</div>"}
︠06160143-0eea-4d59-88ea-4c1f8c4d9a29s︠
C=matrix([[2,1,1],[1,2,0],[1,3,0]])
C_2=C.rref()
print("Matrix C is")
print(C)
print("RREF of C is")
print(C_2)
︡064b27b0-771d-4706-b114-8d7e3e481611︡{"stdout":"Matrix C is\n"}︡{"stdout":"[2 1 1]\n[1 2 0]\n[1 3 0]\n"}︡{"stdout":"RREF of C is\n"}︡{"stdout":"[1 0 0]\n[0 1 0]\n[0 0 1]\n"}︡{"done":true}
︠9018655f-1a81-4332-b119-6a950670af01i︠
%html
<p>I'm sure you've noticed that this is both a one-to-one and onto linear transformation! Take note that this is a $3×3$ matrix. I encourage you to try out several $n×n$ matrices and see if there is a certain correlation between being one-to-one and onto for $n×n$ matrices.</p>
︡cb47f4b8-66a7-43a6-be9d-8a1bb72954d8︡{"done":true,"html":"<p>I'm sure you've noticed that this is both a one-to-one and onto linear transformation! Take note that this is a $3×3$ matrix. I encourage you to try out several $n×n$ matrices and see if there is a certain correlation between being one-to-one and onto for $n×n$ matrices.</p>"}
︠1471e786-5f14-4fe4-bbba-075d7ef732bb︠









