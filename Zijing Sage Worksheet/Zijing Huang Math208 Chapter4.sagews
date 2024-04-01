︠1992983d-f159-4a3e-9309-4e016c3cb40a︠
from sage.rings.all import ZZ
from sage.matrix.constructor import Matrix
import numpy as np


# Subspace
print("Subspace")
# Define a 3-dimensional vector space
vector_space = np.array([[1, 2, 3],
                         [4, 5, 6],
                         [7, 8, 9]])

# Define a subspace that contains the zero vector
subspace_zero = np.array([[0, 0, 0]])

# Check definition 1: The subspace must contain the zero vector
print("Definition 1 - contains zero vectors:", np.all(subspace_zero in vector_space))

# Check definition 2: The subspace is closed to addition
vector1 = np.array([1, 2, 3])
vector2 = np.array([3, 3, 3])
sum_result = vector1 + vector2
is_closed_addition = np.all(sum_result in vector_space)
print("Definition 2 - closed to addition:", is_closed_addition)

# Check definition 3: The subspace is closed to multiplicity
scalar = 2.2
multiply_result = scalar * vector1
is_closed_multiply = np.all(multiply_result in vector_space)
print("Definition 3 - closed to multiplicity:", is_closed_multiply)

# Whether the output is a subspace
is_subspace = np.all([subspace_zero in vector_space, is_closed_addition, is_closed_multiply])
print("Whether the output is a subspace:", is_subspace)
print()



# Null space
print("Null space")
# Define a matrix A
A = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Find the null space of A
null_space_vectors = []

# Iterate through potential solutions to Ax = 0
for x1 in range(-10, 11):
    for x2 in range(-10, 11):
        for x3 in range(-10, 11):
            vector = [x1, x2, x3]

            # Check if the vector is in the null space (Ax = 0)
            Ax_result = [0] * len(A)
            for i in range(len(A)):
                for j in range(len(vector)):
                    Ax_result[i] += A[i][j] * vector[j]

            if all(result == 0 for result in Ax_result):
                null_space_vectors.append(vector)

# Display the null space vectors
print("Null Space Vectors:")
for vector in null_space_vectors:
    print(vector)
print()



# Kernel
# Find the kernel (null space) of T
null_space_vectors = []
for x1 in range(-10, 11):
    for x2 in range(-10, 11):
        result_vector = [
            x1 - 2 * x2,
            -3 * x1 + 6 * x2,
            2 * x1 - 4 * x2
        ]

        # Check if the vector is in the null space
        if all(element == 0 for element in result_vector):
            null_space_vectors.append([x1, x2])

# Display the null space vectors
print("Kernel (Null Space) Vectors:")
for vector in null_space_vectors:
    print(vector)
print()

# Range
A = Matrix(QQ, [[1, -2], [-3, 6], [2, -4]])
echelon_form = A.echelon_form()

# Get the column indices of the pivot columns
linearly_indep_cols = echelon_form[1]

# Remove duplicates using set and convert back to list
col_pivot = list(set(linearly_indep_cols))

# Create a matrix from the unique columns
range_t = column_matrix([A.column(j) for j in col_pivot])
print("Range (Column Space) Vectors:")
print(range_t)
print()



# Basis
print("Basis")
# Display a matrix
A = matrix(QQ,[[-1, -6, 4],
               [2, 7, -3],
               [3, 5, 1],
               [1, 2, 0]])
# Find Echelon Form
fraction_field = A.rref()
# Find the index of pivots
linearly_indep_cols = fraction_field.pivots()
# Find the basis
basis = []
for i in linearly_indep_cols:
    basis.append(A.transpose()[0])
print(basis)

# Dimension
print("Dimension")
# Display a matrix
A = matrix(QQ,[[-1, 3, -3, 5],
               [2, -6, 8, -3],
               [5, -15, 19, -11],
               [-1, 3, -5, -2],
               [-4, 12, -18, -1]])
# Find Echelon Form
fraction_field = A.rref()
# Find the index of pivots
linearly_indep_cols = fraction_field.pivots()
# Find the dimension of this matrix
dimension = 0
for i in linearly_indep_cols:
    dimension += 1
print(dimension)
print()



# Row and Column spaces
print("Rank and Nulllity")
# Display a matrix
A = matrix(QQ,[[1, -2, 3, 0, -1],
               [2, -4, 7, -3, 3],
               [3, -6, 8, 3, -8]])
# Find the rank of the matrix
rank = A.rank()
# Find the nullity of the matrix
nullity = A.right_nullity()
print(rank)
print(nullity)



# Change Basis
print("Change Basis")
# Define the vector x
x = np.array([3, 4, 4])

# Define the new basis vectors u1, u2, u3
u1 = np.array([1, 1, 2])
u2 = np.array([0, -3, 1])
u3 = np.array([1, 0, 2])

# Form the change of basis matrix P
U = np.column_stack((u1, u2, u3)).transpose()

# Solve for the coefficients in the new basis
U_inverse = np.linalg.inv(U)
x_B = np.dot(U_inverse, x)

print("Change of basis matrix U:", U)
print("Coefficients in the new basis:", x_B)









